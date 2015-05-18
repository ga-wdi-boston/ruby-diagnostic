# Quiz: Ruby Fundamentals


# question 1
# complete the method is_of_age?
# it should accept strings or numbers in its arguments
# it should return false if age is less than minimum_age

def is_of_age? age, minimum_age
  # your code goes here
end

# question 2
# complete the method okay_to_drink, which should invoke is_of_age? from question 1
# this question will receive feedback independent of your answer to question 1
# the method should return "I'm sorry, <age> isn't old enough to drink.  The minimum age is <drinking_age>." if the call to is_of_age? returns false
# replace <age> and <drinking_age> with the value of the corresponding argument
# otherwise, it should return "Come on in."
# Remember p, print, puts don't return their arguments

def okay_to_drink age, drinking_age
  # your code goes here
end


# question 3
# complete the method ac_needed
# it takes as arguments the current temperature, if the A/C is functional,
# and what temperature is wanted
# If the air conditioner is functional and the current temperature is above
# the desired temperature the method should return "Turn on the A/C Please"
# If the air conditioner is non-functional and the current temperature is
# above the the desired temperature the method should return
# "Fix the A/C now! It's hot!"
# If the air conditioner is non-functional and the current temperature is
# below the desired temperature the method should return
# "Fix the A/C whenever you have the chance. It's cool."
def ac_needed current_temp, ac_working, desired_temp
  # your code goes here
end


# question 4
# the return of fizz_buzz
# define a method called fizz_buzz, which takes one argument, num
# it should return "fizz" if num is evenly divisible by 3
# "buzz" if num is evenly divisible by 5
# and "fizz buzz" if the number is evenly divisible by both 3 and 5
# note the space in "fizz buzz"

# your code starts here


# Question 5
# add calls to your function to check what they return
# then run this script to see how they're they're working
# using puts, etc is expected in this question

# your code start here


# BONUS QUESTION (optional)
# If you got the prior ones done, give this one a try.
# its a little bit harder, and isn't part of the core assessment
#
# This function should take two arguments that are either integers 2..10,
# or strings 'j', 'q', 'k', 'a' representing playing cards
# The function returns true if the sum of the values of the cards if 21,
# and false if it is any other number.
# The value of the 'j', 'q', 'k' is 10.
# The value of 'a' is 1 or 11, depending on what is more advantagous
# For example:
# blackjack?(10, 'a') => true
# blackjack?(5, 4) => false
def blackjack?(card_one, card_two)
  # your code goes here
end
