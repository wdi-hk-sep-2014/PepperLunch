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
end
