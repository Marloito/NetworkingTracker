get '/users/:user_id/contacts' do
  @user = User.find(session[:user_id])
  @contacts = @user.contacts.all
  @contacts = @contacts.sort { |a,b| a.name.downcase <=> b.name.downcase }
  erb :'/contacts/index'
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'/contacts/show'
end
