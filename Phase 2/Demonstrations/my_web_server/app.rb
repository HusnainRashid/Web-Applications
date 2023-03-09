require "sinatra/base"

class Application < Sinatra::Base

  get '/hello' do
    name = params[:name]

    return "Hello #{name}"
  end

  get '/posts' do
    name = params[:name]
    cohort_name = params[:cohort_name]

    p name
    p cohort_name

    return "Hello #{name}, you are in the cohort of month #{cohort_name}."
  end

  post '/' do
    title = params[:title]

    return "Post was created with title: #{title}"
  end
end

