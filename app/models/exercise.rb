class Exercise < ActiveRecord::Base
  validates_presence_of :description, :type, :calories, :date
  belongs_to :user
end
