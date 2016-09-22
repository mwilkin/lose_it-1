# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! email: "jack@gmail.com", user_name: "jack", password: 'password1', password_confirmation: 'password1', height: 6, dob: '1981-08-15'

exercises_list = [
  ["Jogging", "running", 250, "2016-09-21", user.id],
  ["Hike", "walk", 100, "2016-09-20", user.id],
  ["swimming", "swim", 500, "2016-09-29", user.id],
  ["cyclocross race", "biking", 1000, "2016-09-21", user.id],
  ["weight lifting", "gym", 500, "2016-09-30", user.id],
  ["cross country skiing", "skiing", 1500, "2016-09-19", user.id]
]

exercises_list.each do |description, activity, calories, date, a|
  Exercise.create( description: description, activity: activity, calories: calories, date: date, user_id: a)
end

foods_list = [
  ["Apple", "Breakfast", 120, "2016-09-21", user.id],
  ["Kashi Bar", "Snack", 140, "2016-09-21", user.id],
  ["Coffee", "Breakfast", 50, "2016-09-21", user.id],
  ["Waffle", "Lunch", 120, "2016-09-22", user.id],
  ["Ben&Jerry's Phish Food ice cream", "Dinner", 1000, "2016-09-21", user.id],
  ["Beer", "Dinner", 120, "2016-09-21", user.id]

]

foods_list.each do |description, meal, calories, date, a|
  Food.create( description: description, meal: meal, calories: calories, date: date, user_id: a)
end
