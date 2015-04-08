defmodule IsUpTest do
  use ExUnit.Case

  test "it returns true for an available site" do
    assert IsUp.check('http://httbin.org/get')
  end

  test "it returns false for a site that is not up" do
    assert !IsUp.check('http://foobar.com/fake')
  end
end
