require "sinatra/base"

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.

  ## Exercise Chapter 2
  get "/hello" do
    name = params[:name]

    return erb(:index)
  end
  ## Exercise Chapter 3
  get "/name" do
    name_1 = params[:name_1]
    name_2 = params[:name_2]
    name_3 = params[:name_3]

    return "#{name_1}, #{name_2}, #{name_3}"
  end
  ## Challenge Chapter 2
  post "/submit" do
    name = params[:name]
    message = params[:message]

    return "Thanks #{name}, you sent this message: '#{message}'"
  end

  ## Challenge Chapter 3
  post "/sort-names" do
    # name_1 = params[:name_1]
    # name_2 = params[:name_2]
    # name_3 = params[:name_3]
    # name_4 = params[:name_4]
    # name_5 = params[:name_5]
    empty = []
    name = params[:name]

    return name.split(',').sort.join(',')
  end
end
