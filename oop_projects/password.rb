require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"

# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 10
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

# my_password = BCrypt::Password.new("$2a$12$GxAjDEVFptvRRJRNTcGUb.pL8LqWMp4ybeOBlS5Le1FmztrBwwtay")
# puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

puts my_password == my_password_1
puts my_password_1 == 'my password'