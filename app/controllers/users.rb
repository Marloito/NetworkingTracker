post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect "/sessions/new"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/new' do
  erb :'/users/new'
end

get '/users/:id' do
  'made it!'
end
