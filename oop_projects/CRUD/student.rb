require_relative "crud"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end
    
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
end

nishanth = Student.new("Nishanth", "Venkatesan", "nishnath14435", "nishanth1fswedf@gmail.com", "password1")
john = Student.new("john", "V", "john1", "john1@gmail.com", "john1")

hashed_password = nishanth.create_hash_digest(nishanth.password)

puts hashed_password