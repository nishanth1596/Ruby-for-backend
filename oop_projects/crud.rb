require 'bcrypt'

users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

# new_password = create_hash_digest("password1")
# puts new_password == "password1"
# puts new_password == "password2"

def create_secure_users(list_of_users)
  # list_of_users.each do |user_record|
    # user_record[:password] = create_hash_digest(user_record[:password])
  # end

  # alternative way of wiritng the above
  list_of_users.each { |user_record| user_record[:password] = create_hash_digest(user_record[:password]) }
  list_of_users
end

puts create_secure_users(users)