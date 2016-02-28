# Code Reading

def fizzbuzz(num)
#bsy> create new method passing 'num' as argument

  case
#bsy> a type of a loop but its incomplete...it should be 'case num'
#bsy> when num can be divided eaually by 15, 3, or 5...assign the relevant variable
    when num % 15 == 0 then "FizzBuzz"
    when num % 3  == 0 then "Fizz"
    when num % 5  == 0 then "Buzz"
    else num
  end
end

def fizz_buzz_to(limit)
#bsy> create new method with 'limit' as argument
  1.upto(limit).each do |num|
#bsy> up to the 'limit' call the above method (fizzbuzz) and output to console the value    
    puts fizzbuzz(num)
  end
end

# Fix Broken Code

def area_of_triangle(base, height)
  puts base * height / 2
end

base = 7
height = 6
puts area_of_triangle(base, height)

# Coding

class Waitlist
  attr_writer :output
  attr_reader :list

  def initialize 
      @list=["Kareem", "Brian"]
  end

# => add_party 
  def add_party(add_party_name)
    @list << add_party_name
  end

# =>list  
  def list
    @list
  end

# => seat 
  def seat
    @list = @list.drop(1)
  end
#class end
end


# =>                      ** FOR HOMEWORK: ** 
#Method: add_party 
list=Waitlist.new
add_party_name = "Ted"
puts "Party added to waitlist: #{add_party_name} and new waitlist is: #{list.add_party(add_party_name)}"

#Method: list 
list=Waitlist.new
puts "Current Waitlist: #{list.list}"

#Method: seat 
list=Waitlist.new
puts "Updated list after first person seated: #{list.seat}"

# ----------------------END OF HOMEWORK-----------------------------


# ----------------------BEGIN MY APPROACH-----------------------------
# =>MY APPROACH...allows me to use the list for other operations **

# class Waitlist
#   attr_writer :output
#   attr_reader :list

#   def initialize 
#       @list=["Kareem", "Brian"]
#   end

# => METHOD: list
  # def list   
  #   output[:list_array]=@list
  # end

# => METHOD: add_party
  # def add_party(output)
  #   puts "enter party to be added to waitlist:"
  #   add_party_name = gets.chomp
  #   @list << add_party_name
  #   output[:name] = add_party_name
  #   output[:list_array] = @list
  #   return output
  # end

# => METHOD: seat 
  # def seat(output)
  #   output[:seated] = @list.shift
  #   output[:list_array] = @list    
  #   return output
  # end
# end



# => CALL add_party
# list = Waitlist.new
# output={}
# list.add_party(output)
# puts "New party added to waitlist: #{output[:name]}"
# puts "Do you want to add another name? (Y or N)"
# ans=gets.capitalize.chomp
# while ans=="Y"  do
#   list.add_party(output)
#   puts "New party added to waitlist: #{output[:name]}"
#   puts "Do you want to add another name? (Y or N)"  
#   ans=gets.capitalize.chomp
# end
# puts "\nUpdated Waitlist: "
# output[:list_array].each {|name| puts name}
# puts ""
#-----------------------------------------------------

# => CALL list
#list=Waitlist.new
# puts "current waiting list:"
# list.list(output)
#puts output[:array_list].each {|name| puts name}
#-----------------------------------------------------

# => CALL seat
# list = Waitlist.new
# list.seat(output)
# puts "\nPerson seated: #{output[:seated]}"
# puts "Updated waiting list:"
# output[:list_array].each {|name| puts name}