get '/users/:user_id/contacts' do
  @user = User.find(session[:user_id])
  'users contacts index'
end
