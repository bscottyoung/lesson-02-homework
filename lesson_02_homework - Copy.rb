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
  attr_accessor :add_party_name, :list
  ##> Initialize causes errors....Why???
  # def initialize
  #   @add_party_name = add_party_name
  #   @list  = list 
  # end

# =>add_party works
  def add_party(add_party_name, list)
    list << add_party_name
    puts "Updated waitlist:"
    list.each do |name|
      puts name
    end
  end

# =>list working
  def list(list)
    puts "Current list:" 
    list.each do |name|
      puts name
    end
  end

# =>seat works
  def seat(list)
    puts "Party Seated: #{list.shift}"
    puts ""
    puts "Updated list:" 
    list.each do |name|
      puts name
    end
  end


#class end
end

list = ["kareem grant", "brian young", "ted dansen", 'helga horchow' ]

#add_party_name to waitlist
add_party_name="lawrence olivier"
Waitlist.new.add_party(add_party_name, list)

#output the waiting list
Waitlist.new.list(list)

#seat the fist party and output the updated list
Waitlist.new.seat(list)
