module OmniauthMacros
  def mock_auth_hash
    OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
      'provider' => 'facebook',
      'uid' => '12345',
      'extra' => {
        'raw_info' => {
          'name' => "Anna"
        }
      },
      'credentials' => {
        'token' => 'mock_token',
        'secret' => 'mock_secret'
      }
    })
  end

  def login (user=nil)
    user ||= User.find_or_create_by(name: 'Anna', uid: '12345', provider: 'facebook')
    @user = user
    visit root_path
    mock_auth_hash
    click_on 'Login'
  end
end
