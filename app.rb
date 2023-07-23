require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/:user_input"){
  @user_selection = params.fetch("user_input").to_s
  @computer_selection = ['rock','paper','scissors'].at(rand(0..2))

  if @user_selection == "scissors"
    if @computer_selection == "paper"
      @result = "We won!"
    elsif @computer_selection == "scissors"
      @result = "We tied!"
    elsif @computer_selection == "rock"
      @result = "We lost!"
    else
      @result = "Invalid entry"
    end
  elsif @user_selection == "rock"
    if @computer_selection == "paper"
      @result = "We lost!"
    elsif @computer_selection == "scissors"
      @result = "We won!"
    elsif @computer_selection == "rock"
      @result = "We tied!"
    else
      @result = "Invalid entry"
    end
  elsif @user_selection == "paper"
    if @computer_selection == "paper"
      @result = "We tied!"
    elsif @computer_selection == "scissors"
      @result = "We lost!"
    elsif @computer_selection == "rock"
      @result = "We won!"
    else
      @result = "Invalid entry"
    end
  else 
    @result = "Invalid entry"
  end

  erb(:game)
}
