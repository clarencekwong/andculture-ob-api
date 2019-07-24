# Andculture OpenBrewery custom API

[OpenBrewery Custom API](https://andculture-ob-api.herokuapp.com/api/v1/breweries)

The API is hosted on Heroku, please allow the dyno to spin up if the application is off

## Libraries
OpenBrewery Custom API is built on:
- [Ruby on Rails](https://rubyonrails.org/)

## Installation

Fork and clone this repository to your local machine, ```cd``` into the the server folder, and run ```bundle install```.
Make sure you have [postgreSQL](https://postgresapp.com/) installed and running on your local machine. Run ```rails db:create && rails db:migrate``` to create your database and established the existing schemas. You can run ```rails db:seed``` if you wish to seed your local repository with my placeholder data.
Run ```rails s``` to start your local server on Rails.

## Routes

At the root of ```/api/v1/breweries``` returns all breweries stored in this database. You can add the following search parameters to filter your information you recieve:
- ```/api/v1/breweries/by_city=<INSERT YOUR CITY HERE>```
  - case insensitive
- ```/api/v1/breweries/by_brewery_type=<INSERT YOUR BREWERY TYPE HERE>```
  - case insensitive
- ```/api/v1/breweries/by_state=<INSERT YOUR STATE HERE>```
  - case insensitive
