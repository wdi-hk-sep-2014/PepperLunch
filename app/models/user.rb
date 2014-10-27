class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates_presence_of :first_name, :last_name
end
