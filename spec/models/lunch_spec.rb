require 'rails_helper'

RSpec.describe Lunch, :type => :model do
  it "passes validation with all valid information" do
    lunch = Lunch.new
    lunch.name = "Pepper Lunch"
    lunch.location = "Cyberport"

    expect(lunch).to be_valid
  end

  it "should pass validation with name" do
    lunch = Lunch.new
    lunch.name = "Pepper Lunch"
    lunch.save
    expect(lunch).to be_valid
  end

  it "should fail if name is not provided" do
    lunch = Lunch.new
    lunch.save
    expect(lunch).to be_invalid
  end

  it "should pass validation without location" do
    lunch = Lunch.new
    lunch.name = "Pepper Lunch"
    lunch.location = nil
    lunch.save
    expect(lunch).to be_valid
  end

  describe "belongs to user lunch" do
    it "should belong to a user" do
      user = User.create email: 'harry.ng@ga.co', first_name: 'Harry', last_name: 'Ng'
      lunch = Lunch.create name: 'Pepper Lunch', location: 'Cyberport', user: user

      expect(lunch).to be_valid
    end

    it "should be invalid if the lunch does not have a user" do
      user = User.create email: 'harry.ng@ga.co', first_name: 'Harry', last_name: 'Ng'
      lunch = Lunch.create name: 'Pepper Lunch', location: 'Cyberport', user: nil

      expect(lunch).to be_invalid
    end
  end
end
