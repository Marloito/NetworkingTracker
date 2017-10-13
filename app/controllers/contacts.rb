get '/users/:user_id/contacts' do
  @user = User.find(session[:user_id])
  @contacts = @user.contacts.all
  erb :'/contacts/index'
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'/contacts/show'
end
