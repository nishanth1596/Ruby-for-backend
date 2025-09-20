users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]



puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
# puts "If possword is correct, you will get back the user object"

count = 0
continue = true
while count <3 && continue
  print "Username: "
  user_name = gets.chomp
  print "Password: "
  pass_word = gets.chomp

  exisitingUser = users.find { |user| user[:username] == user_name }
  if !exisitingUser 
    puts "Credentials were not correct"
    count += 1
  else
    puts exisitingUser
  end


  # puts count
  # count += 1
end
