# StackPrinter
It prints the full stacktrace colorized.

> This gem was not added to rubygems.org. It's purpose was to study and practice ruby coding.

In order to use it you should add into your Gemfile like this:
```ruby
# Gemfile
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'stack-printer', git: 'https://github.com/kimpastro/stack_printer.git', branch: 'main'
```

## Usage

```ruby
# Just send .fink message to StackPrinter class
StackPrinter.fink
```
This will prints into your console the full stacktrace until it reaches the place you call it.

In order to print only your project's stacktrace, send as argument `false`
```ruby
StackPrinter.fink(false)
```

That's it.
