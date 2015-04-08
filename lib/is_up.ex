defmodule IsUp do
  def check(url) do
    response = HTTPotion.get(url)
    HTTPotion.Response.success?(response, :extra)
  end  
end
