defmodule IsUp do
  @moduledoc """
  The base module of IsUp.

  It exposes a single method, check.
  """

  @doc """
  Checks whether the given url is up. This is done by sending a HEAD request and
  checking whether the response code was successful.

  Args:
  * `url` - the url to check, string

  Returns a boolean.
  """
  def check(url) do
    try do
      response = HTTPotion.head(url)
      HTTPotion.Response.success?(response, :extra)
    rescue
      _ -> false 
    end
  end  
end
