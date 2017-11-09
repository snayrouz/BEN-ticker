# README

This project is currently being built and will be showcased at demo night at Turing School of Software on November 11, 2017.

# Tools

In order to run this on your local machine you must have the following installed:

* Rails 5.1.2
* PostgreSQL
* Ruby 2.4.1

# Setup

* Clone down this repo
* `cd BEN ticker`
* `bundle install`
* Setup the database by running `bundle exec rake db:{create,migrate}`
* Next, run the command  `rake dev:seed`

# Record Endpoints

* `   GET "avg_btc_open_monthly"
      GET "avg_btc_open_yearly"
      GET "avg_btc_high_monthly"
      GET "avg_btc_high_yearly"
      GET "avg_btc_low_monthly"
      GET "avg_btc_low_yearly"
      GET "avg_btc_close_monthly"
      GET "avg_btc_close_yearly"`
