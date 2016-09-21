class Exercise < ActiveRecord::Base
  validates_presence_of :description, :activity, :calories, :date
  belongs_to :user
end
