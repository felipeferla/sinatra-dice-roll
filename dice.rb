require "sinatra"
require "sinatra/reloader"
get("/") do "Hello World" end
get("/zebra") do "Hello There" end
get("/car") do "It worked!" end

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
