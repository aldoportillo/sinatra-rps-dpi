require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end
