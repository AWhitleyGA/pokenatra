require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/team'
require_relative 'models/trainer'
require_relative 'models/pokemon'

####################HOME#################

get '/' do
  redirect '/teams'
end

###################TEAMS##################
get '/teams' do
  @teams = Team.all
  erb :"teams/index"
end

get '/teams/:name' do
  @team = Team.find_by(name: params[:name])
  @trainers = @team.trainers
  erb :"teams/show"
end

####################TRAINERS#################

get '/:name/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @team = Team.find_by(name: params[:name])
  @pokemons = @trainer.pokemons
  erb :"trainers/show"
end

get '/trainers/new' do
  erb :"trainers/new"
end

post '/trainers' do
  @trainer = Trainer.create(
    name: params[:name],
    img_url: params[:img_url],
    team_id: params[:team_id]
  )
  @team = Team.find(params[:team_id])
  redirect "/#{@team.name}/trainers/#{@trainer.id}"
end

####################POKEMON##################

get '/pokemon' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemon/new' do
  erb :"pokemons/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(
    name: params[:name],
    cp: params[:cp],
    poke_type: params[:poke_type],
    img_url: params[:img_url]
  )
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(
    name: params[:name],
    cp: params[:cp],
    poke_type: params[:poke_type],
    img_url: params[:img_url]
  )
  redirect "/pokemon/#{@pokemon.id}"
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect "/pokemon"
end
