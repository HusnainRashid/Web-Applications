require "sinatra/base"

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.

  ## Exercise Chapter 2
  get "/hello" do
    name = params[:name]

    return "Hello #{name}!"
  end

  ## Challenge Chapter 2
  post "/submit" do
    name = params[:name]
    message = params[:message]

    return "Thanks #{name}, you sent this message: '#{message}'"
  end
end
