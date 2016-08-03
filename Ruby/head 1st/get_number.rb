# Get My Number Game
# Written by: u!

puts "Welcome to 'Get My Number!'"

# Get the player's name, and great them.
print "What's ur name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess.

puts "I've got a random number between 1 and 100."
puts "Can u guess it?"
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly.
guessed_it = false

while num_guesses < 10 && guessed_it == false
# until num_guesses == 10 || guessed_it

#remaining_guesses = 10 -num_guesses
#puts remaining_guesses.to_s + " guesses left."
#puts "#{10 - num_guesses} guesses left."
puts "You've got #{10 - num_guesses} guesses left."
print "Make a guess: "
guess = gets.to_i

num_guesses += 1

# Compare the guess to the target.
# Print the appropriate message.
if guess < target
  puts "Oops. Your guess was LOW."
elsif guess > target
  puts "Oops. Your guess was HIGH."
elsif guess == target
  puts "Good job, #{name}!"
  puts "You guessed my number in #{num_guesses} guesses!"
  guessed_it = true
end

# If the player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
end

