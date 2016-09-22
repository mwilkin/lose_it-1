require "rails_helper"
require 'database_cleaner'

def user_log_in
  DatabaseCleaner.clean
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user, :run_callbacks => false)
  visit '/'
  click_on "Sign In"
end

describe 'Foods' do
  it 'validates adding a food', js: true do
  user_log_in
  click_on "New Food"
  expect(page).to have_content 'Home Page'
  end

  it 'validates an error while adding a food', js: true  do
    user_log_in
    click_on "New Food"
    fill_in "Description", :with => "Apple"
    fill_in "Calories", :with => 300
    fill_in "Date", :with => ""
    click_on "Create Food"
    expect(page).to have_content 'Date can\'t be blank'
  end

  it 'validates adding a food', js: true do
    user_log_in
    click_on "New Food"
    fill_in "Description", :with => "Apple"
    select "Dinner", :from => "food_meal"
    fill_in "Calories", :with => 300
    fill_in "Date", :with => "01/09/1999"
    click_on "Create Food"
    expect(page).to have_content 'dinner'

  end

end
