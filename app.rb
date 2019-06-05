require_relative 'config/environment'

class App < Sinatra::Base

#which renders the reverse.erb page.
  get '/reverse' do
    erb :reverse
  end

#which receives that params hash from the form 
# (but does nothing with it) and renders the 
# reversed.erb page.
  post '/reverse' do
  	# puts params  =>> returns a hash

  	original_string = params["string"]
  	@reversed_string = original_string.reverse

    erb :reversed
  end

#which renders the friends.erb page.
  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end