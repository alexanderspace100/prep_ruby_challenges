=begin

10 friends are sitting in a circle around a table and decide to play a new game.
In it, they count up through the numbers from 1 to 100. The first person says "1", the second 
says "2" and so on... but with a few catches:

Whenever the number is divisible by 7, they switch directions.
So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
Whenever the number is divisible by 11, they skip the next person for the following number.
For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
Your job is to code a program which outputs each number and which person said it.
Use it to show that player 1 will say the number "100".

Tips:

Remember to stick with brute force instead of trying to "figure out" the trick to the problem.
Name your variables well!
Ignore the skipping to start out with. Only add it when you're ready.

Advanced Option:
Make your method take two inputs -- the number of players and the number you're counting up to.
Then see who says the last number each time!
=end

def counting_game(number_of_players, max_number)
	player = 1
	number = 1
	switch = false

	while number <= max_number
		direction = 1
		skip = false

		switch = !switch if number % 7 == 0
		skip = true if number % 11 == 0

		direction += 1 if skip
		direction *= -1 if switch

		player -= number_of_players if player > number_of_players
		player += number_of_players if player <= 0

		puts "Player #{player} says: I am number #{number}."

		player += direction
		number += 1
	end
end

puts counting_game(10, 100)