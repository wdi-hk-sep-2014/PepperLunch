require 'rails_helper'

RSpec.describe User, :type => :model do
  it "should be valid with all information" do
    user = User.new
    user.email = 'harry.ng@ga.co'
    user.first_name = 'Harry'
    user.last_name = 'Ng'
    user.lunch_count = 0
    user.save
    expect(user).to be_valid
  end

  it "should be invalid without email" do
    user = User.new
    user.email = nil
    user.first_name = 'Harry'
    user.last_name = 'Ng'
    user.save
    expect(user).to be_invalid
  end

  it "should be invalid for duplication email" do
    user1 = User.create email: 'fer@ga.co', first_name: 'Fer', last_name: 'Martin'
    user2 = User.create email: 'fer@ga.co', first_name: 'Mark', last_name: 'Wilson'
    expect(user2).to be_invalid
  end

  it "should be invalid without first name" do
    user = User.create email: 'mark.wilson@ga.co', first_name: nil, last_name: 'Wilson'
    expect(user).to be_invalid
  end

  it "should be invalid without last name" do
    user = User.create email: 'mark.wilson@ga.co', first_name: 'Mark', last_name: nil
    expect(user).to be_invalid
  end

end
