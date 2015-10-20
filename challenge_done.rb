# Assessment :: Ruby Basics


# Question 1: Ruby objects and classes.
# How would one find the class of the below objects.

puts "Hello World".class
puts 33.class
puts 65.89.class

# Question 2: Booleans
# What would be the result of executing the below statements

if 33 && 55
  puts "it's true"
else
  puts "it's false"
end


# 2.1 Substitue "hello" && 4.5 for 33 && 55 above. What's the output?
# should be true, check it

if nil && 88
  puts "it's true"
else
  puts "it's false"
end

# 2.2 Substitue nil && 88 for 33 && 55 above. What's the output?
# should be false

if nil && 88
  puts "it's true"
else
  puts "it's false"
end

# 2.4 Substitue 63.4 < 64. What's the output?
# should be true
if 63.4 < 64
  puts "it's true"
else
  puts "it's false"
end

# Question 3 :Strings

# How would you (Yes, you can look up the String methods!):

# 3.1. determine if a string is included another another string?
# String#include?
puts "long day's night".include?('gh')

# 3.2. determine if the length of a string?
puts "this is a string.".size

# 3.3. Go from the string "eels in my hovercraft" to "fish in my sink" but don't
# change the string "eels in my hovercraft"

eels = "eels in myhovercraft"
puts "#{eels}"

fish = eels.gsub(/eels/, 'fish').gsub(/hovercraft/, 'sink')
puts "#{fish}"
puts "#{eels}"

# Question 4 : Variables
# Change the below string, do NOT make copies of the string. All changes
# to the string should be made in-place. (Unless told otherwise, like in 4.3.)

vehicle = "4 wheel Bus"
puts "vehicle is #{vehicle}"

# 4.1 to "6 wheel Bus"
vehicle.sub!(/4/, '6')
puts "vehicle is #{vehicle}"

# 4.2 to "6 wheel tank"
vehicle.sub!(/Bus/,'tank')
puts "vehicle is #{vehicle}"

# 4.3 Create a NEW string from the string in 4.2 that will be
# "6 wheel tank that shoots rainbow bunnnies"
new_vehicle = vehicle + 'that shoots rainbow bunnnies'
puts "#{vehicle}"
puts "#{new_vehicle}"


# Question 5 : Loop
# - write a loop that guesses your age.
# - Only allow 4 guesses
# - Notify the user if they guess correctly OR if they run out of turns to guess
# - Get mad and curse the fingers that thought you where that old,
# - aaaah maaan c'mon, huh, WTF
# - I'm not kidding, say unkind works to a user that thinks your 10 years older
#   than you are.
age = 58
num_guesses = 0
max_guesses = 4;
loop do
  print 'Guess my age: '
  guess = gets.chomp.to_i

  if guess == age
    puts "Yep, I'm #{guess} years old"
    break
  end
  num_guesses += 1
  if num_guesses >= max_guesses
    puts "Too many guesses, Ciao"
    break
  end
end

# Bonus Question: Who said this?

JFK
# The great enemy of the truth is very often not the lie -- deliberate, contrived
# and dishonest, but the myth, persistent, persuasive, and unrealistic.
# Belief in myths allows the comfort of opinion without the discomfort of thought.
