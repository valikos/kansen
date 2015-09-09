# Kansen

[![Code Climate](https://codeclimate.com/github/valikos/kansen/badges/gpa.svg)](https://codeclimate.com/github/valikos/kansen) [![Test Coverage](https://codeclimate.com/github/valikos/kansen/badges/coverage.svg)](https://codeclimate.com/github/valikos/kansen/coverage) [![Build Status](https://travis-ci.org/valikos/kansen.svg?branch=develop)](https://travis-ci.org/valikos/kansen)

This is library that allows you to update a object values without any code changes in the project. Main condition is the target object is mutable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kansen', github: 'valikos/kansen'
```

And then execute:

    $ bundle

## Usage

### Configuration

The best thing start with the configuration. In configuration you can describe which attributes you want to change. You should set attribute name and describe `note` and `type`. `note` it's value of attribute that you want change. `type` it's format of new value.
`Kansen` suports next types:

- string
- integer
- float
- constant

In practice this will be as follows:

```yaml
first:
  note: 'one'
  type: 'string'
second:
  note: 2
  type: 'integer'
third:
  note: 'Three'
  type: 'constant'
```

### Modification

You can change any type of a object. Main condition is the object responds to messages.

`Kansen` can change hashes and objects. When you're working on modification of target you can use next modification strategies:

- `accessor`. This strategy similar how you use `attr_accessor` in ruby.
- `setter`. This strategy use `instance_variable_set(name, value)` to change instance variable.
- `hash`. This strategy is actual for hashes only.

In the end it should look like this:

```ruby
notes = Kansen.parse YAML.load_file(notes_cfg)
Kansen.modify TargetObject, with: notes, via: :accessor
```

Where `notes` is special collection of changes and `:accessor` is strategy.

_Note: for hashes you should redefine hash like `target_hash = Kansen.modify target_hash, with: notes, via: :hash`_


## Integration


### Rails

Add code below to the `config/environments/development.rb` or any other environment file or to the `config/application.rb`

```ruby
  config.after_initialize do
      notes = Kansen.parse YAML.load_file(notes_cfg)
      Kansen.modify Rails.application.config, with: notes, via: :accessor
    end
```
After that your target object should be changed with our notes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kansen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
