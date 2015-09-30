require 'rails_helper'

RSpec.feature "StubbedUsers", type: :feature do
  context 'User is logged in by stubbing out oauth' do
    it "Clicking login link logs in user" do
      visit root_path
      mock_auth_hash
      click_on 'Login'
      expect(page).to have_content('Sign Out')
    end
  end

  context "Logged in user can log out" do
    it "Clicking Sign out link user is logged out" do
      visit root_path
      mock_auth_hash
      click_on 'Login'
      click_on 'Sign Out'
      expect(page).to have_content('Login')
    end

  end
end
