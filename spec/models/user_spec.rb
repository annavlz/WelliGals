require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Mulitple user creation" do
    it "can create multiple users in the db" do
      expect{create_list(:user, 5)}.to change{User.count}.by(5)
    end
  end

  describe "#self.find_or_create_from_omniauth" do
    it "can find a user by omni auth" do
      auth = mock_auth_hash
      other_auth = mock_auth_hash
      other_auth.uid = SecureRandom.hex
      expect(auth).to_not eq(other_auth)
      User.find_or_create_from_omniauth(auth)
      User.find_or_create_from_omniauth(other_auth)

      expect(User.count).to eq(2)
    end

    it "creates a new user when the current user doesn't exist" do
      auth = mock_auth_hash
      expect{User.find_or_create_from_omniauth(auth)}.to change{User.count}.by(1)
    end
  end

end
