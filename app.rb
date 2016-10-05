require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/pokemon'


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
