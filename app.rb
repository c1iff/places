require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  @places = Place.all()
  erb(:index)
end

get('/place_form') do
  user_place = params.fetch("new_place")
  @new_place = Place.new(user_place)
  @new_place.save()
  erb(:output)
end
