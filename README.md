# Ruboty::Chinachu

Ruboty plugin work with Chinachu server(nam://chinachu.moe/)

This plugin inform you what program reserved and recorded

## Installation

Add this line to your Ruboty's Gemfile:

```ruby
gem 'ruboty-chinachu'
```

And then execute:

    $ bundle install

## dependency

Latest Chinachu required

## ENV

```shell
CHINACHU_API_ENDPOINT     - API endpont address you Chinachu server
CHINACHU_LOGIN            - BASIC login name (Option: if you use BASIC Auth)
CHINACHU_PASSWORD         - BASIC login pass (Option: if you use BASIC Auth)
CHINACHU_PROGRAM_FORMAT   - Output program summary format string
```

## Usage

```shell
ruboty list reserved        # show reserved programs list in this 24 hours
ruboty list broadcasting    # show broadcasting programs list
ruboty list recording       # shwo now recording programs list
ruboty list recorded        # show recorded programs list in this 24 hours
```

## LICENSE

WTFPL

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruboty-chinachu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

