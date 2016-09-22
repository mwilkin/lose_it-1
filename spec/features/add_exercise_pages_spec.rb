require 'rails_helper'
require 'database_cleaner'

def user_log_in
  DatabaseCleaner.clean
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user, :run_callbacks => false)
  visit '/'
  click_on "Sign In"
end

describe 'Exercises' do
  it 'validates adding an exercise', js: true do
    user_log_in
    click_on "New Exercise"
    expect(page).to have_content 'Description'
  end
  it 'validates adding an exercise', js: true do
    user_log_in
    click_on "New Exercise"
    fill_in "Description", :with => "run to store"
    fill_in "Activity", :with => "run"
    fill_in "Calories", :with => 140
    fill_in "Date", :with => "01/09/1999"
    click_on "Create Exercise"
    expect(page).to have_content 'run to store'
  end
  it 'validates adding an exercise', js: true do
    user_log_in
    click_on "New Exercise"
    fill_in "Description", :with => "run to store"
    fill_in "Activity", :with => "run"
    fill_in "Date", :with => "01/09/1999"
    click_on "Create Exercise"
    expect(page).to have_content 'Please fix these errors'
  end
end
