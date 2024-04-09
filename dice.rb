require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  "<h1>2d6</h1>
<p> #{outcome} </p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled #{first_die} and #{second_die} for a total of #{sum}"
  "<h1> 2/10 </h1>

<p> #{outcome} </p>"
end

get("/") do 
  two_six_dice_url  = "https://ubiquitous-garbanzo-pj76g7jrgp7qc7q57-4567.app.github.dev/dice/2/6" 
 "<a href= '#{two_six_dice_url}'> Roll two 6-sided dice </a>"
end
