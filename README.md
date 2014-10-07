# Text Converter

A web service that converts text to JSON.

## Requirements

Requires the `sinatra`, `shotgun`, and `json` gems:

    bundle install


## Running the service
To use the service, run the Ruby script with `shotgun`:

    shotgun -p 4567 lib/json_service.rb

View in the browser at `http://localhost:4567`.

## Running the tests
Initialize RSpec:

    rspec --init

Run the test file:

    rspec spec


