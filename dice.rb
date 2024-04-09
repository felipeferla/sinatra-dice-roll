require "sinatra"
require "sinatra/reloader"
get("/") do "Hello World"
end
get("/zebra") do "Hello There"
end
get("/car") do "It worked!"
end
