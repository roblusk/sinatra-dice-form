require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:home)
end

get("/process_roll") do
  @dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i
  @rolls = []
  @dice.times do
    die = rand(1..@sides)
    @rolls.push(die)
  end

  erb(:process_roll)
end
