# OmniAuth::StitchLabs

This gem provides a dead simple way to authenticate to StitchLabs using OmniAuth.

To use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [StitchLabs Developer Page](https://developer.stitchlabs.com/).

## Installation

Add this line to your application's Gemfile:

```bash
gem 'omniauth-stitchlabs', github: 'julionc/omniauth-stitchlabs'
```

And then execute:

```bash
$ bundle
```

## Usage

Then integrate the strategy into your Ruby middleware:

### Ruby Middleware

```ruby
use OmniAuth::Builder do
  provider :stitchlabs, ENV['STITCHLABS_CLIENT_ID'], ENV['STITCHLABS_CLIENT_SECRET']
end
```

### With Rails

You need to add the following to your `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :stitchlabs, ENV['STITCHLABS_CLIENT_ID'], ENV['STITCHLABS_CLIENT_SECRET']
end
```

For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).

## License

Copyright (c) 2016 Julio Napurí