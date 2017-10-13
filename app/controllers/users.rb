post '/users' do
  user = User.new(params)

  if user.save
    redirect "/sessions/new"
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/new' do
  if request.xhr?
    erb :'users/_new', layout: false
  else
    erb :'/users/new'
  end
end

get '/users/:id' do
  'profile page'
end
