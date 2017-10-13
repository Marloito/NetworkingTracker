20.times do
  username = Faker::Internet.user_name
  email = Faker::Internet.email(username)
  password = Faker::Internet.password
  User.create(username: username, email: email, password: password)
end

User.all.each do |user|
  2.times do
    phone = "#{Faker::Number.number(3)}-#{Faker::Number.number(3)}-#{Faker::Number.number(4)}"
    name = Faker::Name.name

    Contact.create(user: user, name: name, phone: phone, email: Faker::Internet.email(name), linkedin: Faker::Internet.url, company: Faker::Company.name, job_title: Faker::Job.title)
  end
end
