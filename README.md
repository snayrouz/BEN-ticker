# README

This application takes a look at the hourly, daily, monthly, and yearly pricing of Bitcoin, Ethereum and the Nasdaq. I wanted to make this a social exchange app, so I've integrated a Twitter stream to update the user on live price changes and news. 

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

* `GET "avg_btc_open_monthly"`
* `GET "avg_btc_open_yearly"`
* `GET "avg_btc_high_monthly"`
* `GET "avg_btc_high_yearly"`
* `GET "avg_btc_low_monthly"`
* `GET "avg_btc_low_yearly"`
* `GET "avg_btc_close_monthly"`
* `GET "avg_btc_close_yearly"`

# APIs Used
* Twitter API
* CryptoCompare API
* Twilio API
* Coinbase/GDAX API

# To-Do
* GDAX API redo- system was down during development
* Twilio Chat Box for users to chat with each other on the platform.

# Discussion/Feedback/Issues/Bugs
For general discussion and questions, please use the Issues section on Github.
If you've found a genuine bug or issue, please use the Issues section on Github.
