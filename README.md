# StackPrinter

This gem was not added to rubygems.org

In order to use it you should add into your Gemfile like this:
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
### Default
```ruby
sp_full_print
# or
sp_local_print
```

### Manually via `sp_objects`
```ruby

sp_objects.each do |call|
  # Using it's attributes
  call.meth
  call.path
  call.line

  # or calling the to_s method
  call.to_s
end
```
