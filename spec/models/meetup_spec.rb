require 'rails_helper'

RSpec.describe Meetup, type: :model do

  it "has a valid factory" do
    tea_party = create(:meetup)
    expect(tea_party).to be_valid
  end

  it "is invalid without title" do
    tea_party = build(:meetup, title: "")
    expect(tea_party).to be_invalid
  end

  it "is invalid without description" do
    tea_party = build(:meetup, description: "")
    expect(tea_party).to be_invalid
  end

  it "is invalid without date" do
    tea_party = build(:meetup, date: nil)
    expect(tea_party).to be_invalid
  end

  it "is invalid without capacity" do
    tea_party = build(:meetup, capacity: nil)
    expect(tea_party).to be_invalid
  end

end
