
# Jungle

A mini e-commerce application built with Ruby on Rails 6.1. Tested with Cypress and RSpec. 




## Features

- Active Records Database of products
  - DB includes prices, images and prices
- Simulated Payment Page using Stripe
- New and returing User Database with password confirmation
- Adminstration page with catergory and products


## Screenshots

![Homepage](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

![Products](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

![Payment](https://via.placeholder.com/468x300?text=App+Screenshot+Here)


![Admin](https://via.placeholder.com/468x300?text=App+Screenshot+Here)


## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Cypress 9.7.0
- Webpack-Dev-Server 3.11.2


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server


## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.


## Tests

Cypress 9.7.0

RSpec

Stripe

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>


## 🚀 About Me

I am a Junior Full Stack Web Developer with proficiency in NodeJS, JavaScript, ReactJS, SQL, CSS, & HTML.

https://github.com/trickstyle89
