class Food < ActiveRecord::Base
  validates_presence_of :description, :meal, :calories, :date
  belongs_to :user
end
