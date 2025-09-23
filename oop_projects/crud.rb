module Crud
  require 'bcrypt'

  def self.create_hash_digest(password)
  BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
  BCrypt::Password.new(password)
  end

  # new_password = create_hash_digest("password1")
  # puts new_password == "password1"
  # puts new_password == "password2"

  def self.create_secure_users(list_of_users)
  # list_of_users.each do |user_record|
    # user_record[:password] = create_hash_digest(user_record[:password])
  # end

  # alternative way of wiritng the above
  list_of_users.each { |user_record| user_record[:password] = create_hash_digest(user_record[:password]) }
  list_of_users
  end

  def self.authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
      return user_record
    end
  end
  'Credentails were not correct!'
  end
end