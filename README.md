# StackPrinter

This gem was not add to rubygems.org.
In order to use it you should add to your Gemfile like this:
```ruby
# Gemfile
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'stack-printer', git: 'https://github.com/kimpastro/stack_printer.git', branch: 'main'
```

## Usage

In any part of your code you just put:
```ruby
sp_full
# or
sp_local
```
An array of the stacktrace string as response.

Use sp_local if you want to get just your application stack (without printing all gems path) use:

You also have a way to get an Array of objects instead of an array of string:
```ruby
sp_objects
```
You get an Array of `StackPrinter::Call`'s objects. This object has 3 attributes:
```ruby

sp_objects.each do |call|
  call.meth
  call.path
  call.line
end
```

## Printing on screen

There's two ways that you can print:
1. Default
```ruby
sp_full_print
# or
sp_local_print
```

2. Manually via `sp_objects`
```ruby

sp_objects.each do |call|
  call.to_s
end
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kimpastro/stack_printer.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
