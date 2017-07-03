# [HelpCue](http://www.helpcue.com)

[![Build Status](https://travis-ci.org/aomran/helpcue.svg?branch=master)](https://travis-ci.org/aomran/helpcue)
[![Code Climate](https://codeclimate.com/github/aomran/helpcue/badges/gpa.svg)](https://codeclimate.com/github/aomran/helpcue)

## Getting Started

This app requires Ruby 2.4.1 and Postgresql 9.3+ in development and production.

1. `$ git clone git@github.com:oleksandrbyk/olek-rails-helpcue.git`
1. `$ cd olek-rails-helpcue`
1. `$ bin/setup`
1. `$ cp .env.example .env` -- Fill out the .env file with the appropriate environment variables.

### Start development environment (at localhost:5000)
- `$ foreman start`

### Run tests
- `$ bin/rails test` to run all Ruby tests.
- `$ bin/rails test:system` to run system tests.

### Dependencies

- `$ brew install redis` (For realtime pub/sub)
- `$ brew install phantomjs` (For system tests)

### Official Browser Support
- Internet Explorer (Version 9+), Google Chrome (Latest Version), Mozilla Firefox (Latest Version), Apple Safari (Version 5+).
- Clients without Javascript are not supported.
- HelpCue supports mobile browsers.
