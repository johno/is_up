defmodule IsUpTest do
  use ExUnit.Case

  test "it returns true for an available site" do
    for url <- ["http://httpbin.org/get", "https://www.google.com/", "http://furtive.co"], do: assert(IsUp.check(url))
  end

  test "it returns false for a site that is not up" do
    assert !IsUp.check("http://foobar.com/fake")
  end
end
