get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = ['Could not login, please try again!']
    erb :'sessions/new'
  end
end

delete '/sessions/:id' do
  session.clear
  redirect '/'
end
