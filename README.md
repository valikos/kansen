# Kansen

[![Code Climate](https://codeclimate.com/github/valikos/kansen/badges/gpa.svg)](https://codeclimate.com/github/valikos/kansen) [![Test Coverage](https://codeclimate.com/github/valikos/kansen/badges/coverage.svg)](https://codeclimate.com/github/valikos/kansen/coverage) [![Build Status](https://travis-ci.org/valikos/kansen.svg?branch=develop)](https://travis-ci.org/valikos/kansen)

This is library that allows you to update a configuration files without any global changes in the project. Main condition is the configuration is not immutable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kansen', github: 'valikos/kansen'
```

And then execute:

    $ bundle

## Usage
Add code below to the `config/environments/development.rb` or any other environment file or to the `config/application.rb`

    config.after_initialize do
      collection = Kansen.parse File.join(Rails.root, 'tmp/kansen_konfigs.yml')
      Kansen.modify Rails.application.config, with: collection
    end


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kansen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
