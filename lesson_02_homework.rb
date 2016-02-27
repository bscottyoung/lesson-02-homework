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
  attr_accessor :add_party_name, :list, :seated, :output, :name
  ##> Initialize causes errors....Why???
   def initialize 
     @list  = ["kareem grant", "brian young", "ted dansen", 'helga horchow' ] 
   end

# =>add_party
  def add_party(add_party_name, output)
    @list << add_party_name
    output[:name] = add_party_name
    output[:list_array] = @list
    return output
  end

# =>list
  def list(output)
    output[:list_array]=@list
    return output
  end

# =>seat
  def seat(output)
    output[:seated] = @list.shift
    output[:list_array] = @list    
    return output
  end


#class end
end

#Method: add_party_name to waitlist
add_party_name = "lawrence olivier"
list = Waitlist.new
output={}
list.add_party(add_party_name,output)
puts "New party added to waitlist: #{output[:name]}"
puts "\nUpdated Waitlist: "
output[:list_array].each {|name| puts name}
puts ""


#Method: Print the current waiting list
list.list(output)
puts "current waiting list:"
output[:list_array].each {|name| puts name}


#Method: seat the fist party and print the updated list
list.seat(output)
puts "\nPerson seated: #{output[:seated]}"
puts "Updated waiting list:"
output[:list_array].each {|name| puts name}