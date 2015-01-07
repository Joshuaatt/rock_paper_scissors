require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')

get('/') do
  erb(:index)
end

get('/one_player') do
  erb(:one_player)
end

get('/two_player') do
  erb(:two_player)
end

get('/two_player_answer') do
  answer = params.fetch('player1').beats?(params.fetch('player2'))
    if answer == true
      @winner = "Player 1 Wins!"
    elsif answer == false
      @winner = "Player 2 Wins!"
    else answer == "tie"
      @winner = "TIE!"
    end
  erb(:two_player_answer)
end
