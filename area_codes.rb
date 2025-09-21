dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
isSearch = true
# Execution flow
loop do
puts "Do you want to lookup an area code based on a city name?(Y/N)"
response = gets.chomp

if response == "Y" || response == "y"
  puts "Which city do you want the area code for?"
  puts dial_book.keys
  puts ""
  
  puts "Enter your selection"
  city = gets.chomp
  
  area_code= get_area_code(dial_book, city)
  puts "The area code for #{city} is #{area_code}"
else
  isSearch = false
end
break if !isSearch
end