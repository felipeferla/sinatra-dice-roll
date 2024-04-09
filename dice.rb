require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do  

  erb(:home_page)

end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  erb(:two_six)

end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled #{first_die} and #{second_die} for a total of #{sum}"
  "<h1> 2/10 </h1>

<p> #{outcome} </p>"

end
