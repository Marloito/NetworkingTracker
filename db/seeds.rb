20.times do
  username = Faker::Internet.user_name
  email = Faker::Internet.email(username)
  password = Faker::Internet.password
  User.create(username: username, email: email, password: password)
end
