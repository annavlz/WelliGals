require 'rails_helper'

RSpec.describe MeetupsController, type: :controller do
  describe "Meetups API" do
    describe "POST /meetups" do
      before do
        user = create(:user)
        sign_in user
        meetup_params = create(:meetup, title: "tea-party").to_json
        post :create, meetup_params
      end

      it "creates a meetup" do
        expect(Meetup.last.title).to eq("tea-party")
      end

      it "returns success status after creating meetup" do
        expect(response.status).to be 201
      end

    end
  end
end

