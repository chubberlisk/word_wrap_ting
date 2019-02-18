# WordWrapTing

The `WordWrapTing` module provides a `wrap` function which takes two arguments: 
a string, and a column number. The function returns the string, but with line 
breaks inserted at just the right places to make sure that no line is longer 
than the column number. It tries to break lines at word boundaries. Like a word 
processor, it breaks the line by replacing the last space in a line with a newline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'word_wrap_ting'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_wrap_ting

## Usage

```ruby
WordWrapTing.wrap('word', 5)
# word

WordWrapTing.wrap('longword', 4)
# long
# word

WordWrapTing.wrap('very long word', 4)
# very
# long
# word
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/word_wrap_ting. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WordWrapTing project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/word_wrap_ting/blob/master/CODE_OF_CONDUCT.md).
