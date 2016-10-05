# Ruby on Rails | AJAX | Lose It 

#### By Matthew Giem and Matt Wilkin

## Description

_Lose It_
* This application allows users to track exercise and food intake.

### User Stories
* As a user, I would like to enter an Exercise and a Food.
* I would like to list the exercises and foods entered.
* I would like to be able to edit, update and delete foods and exercises.

#### User Stories not implemented
* As a user, I want to have a dashboard that shows how many calories I have consumed and how many calories I've burned for the day.

* As a user, I want to be able to press a button to enter a new food I've eaten, and see the calories change and the food appear in a table. (Hint: use AJAX to show and hide the calories form and process/update the calories data.)

* As a user, I want to sort the foods I've eaten alphabetically by name or calories so I can sort through information quickly, and see how different foods rank.

* As a user, I want to search a list of foods to find how many calories they are, or add them to my log. (Hint: seed the database with a list of foods. Use AJAX auto search to find the search item.).

* As a user, I'd like to see charts, graphs and other data visualization breaking down the calories I've consumed, the amount of exercise I've completed today, etc. (Hint: use ChartKick).

* As a user, I would like to set various goals (whether long or short-term) and see how close I am to reaching them

## Installation

* `git clone https://github.com/matthewgiem/lose_it.git`
* `postgres`
* `gem install rails`
* `bundle install`
* `rake db:create`
* `rake db:migrate`
* `rake db:test:prepare`
* `rake db:seed`

## Running / Development

* Start the project with `rails server`
* Visit your app at [http://localhost:3000](http://localhost:3000).

## Known Issues/Bugs

* No bugs known, but full functionality not established. 

## Support and contact details

Please contact me with any questions, concerns, or ideas.

## Technologies Used

* Ruby
* Rails
* PostgreSQL
* HTML/CSS
* Bootstrap

### License

MIT License

Copyright (c) 2016  **Matthew Giem and Matt Wilkin**
