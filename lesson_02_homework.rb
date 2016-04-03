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
#bsy> per your comment, 'puts' should not be inside of a method.
#bsy> the puts should be 2 spaces indented to line up with 1.upto...
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

