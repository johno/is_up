# is_up [![Build Status](https://travis-ci.org/johnotander/is_up.svg?branch=master)](https://travis-ci.org/johnotander/is_up)

Elixir package to check whether a given url is up.

## How to use

Add the package as a dependency in your Elixir project using something along the lines of:

```elixir
defp deps do
  [{:database_url, "~> 0.1.0"}]
end
```

And add `:httpotion` in your OTP application.

Then you can open `iex -S mix` and try it:

```elixir
IsUp.check("https://google.com") # => true
IsUp.check("https://someurlthatdoesnotexist.foobar") # => false
```

## Tests

```
mix test
```

## License

MIT

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Crafted with <3 by [John Otander](http://johnotander.com) ([@4lpine](https://twitter.com/4lpine)).
