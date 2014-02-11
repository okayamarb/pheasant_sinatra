require './model/user'

5.times do |n|
  u = User.new
  u.email = "user#{n}@email.com"
  u.name = "user#{n}"
  u.save
end
