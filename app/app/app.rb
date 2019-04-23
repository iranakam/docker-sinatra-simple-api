require 'sinatra'
require 'sequel'
require 'mysql'
require 'json'

class App < Sinatra::Base

  get '/movies.json' do
      DB = Sequel.connect('mysql2://app:app@db:3306/app')  
      DB[:movies].join(:directors, id: :director_id).all.to_json
  end
end
