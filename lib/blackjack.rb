def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
<<<<<<< HEAD
  rand(1..11)
end

def display_card_total(ct)
  puts "Your cards add up to #{ct}"
=======
  card = rand(1..11) #reuse the randomize method by setting it equal to a variable
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
>>>>>>> 92f034b45d81b85bcc3a65e7f28838f74f67104e
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

<<<<<<< HEAD
def end_game(ct)
  if ct > 21
    puts "Sorry, you hit #{ct}. Thanks for playing!"
  end
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  return x
end

def hit?(x)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    x += deal_card
  elsif user_input == "s"
    x
=======
def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total) #once you have figured out the sum of your two cards, you can pass the total in as an argumnt so your phrase is displayed.
  return card_total
end

def hit?(card_total)
  prompt_user #ask the user if they want to hit or stay
  user_input = get_user_input #set a variable to use for your if/else statement
  if user_input == "h"
    card_total += deal_card #increase your former total by the new number given by dealing another card
  elsif user_input == "s"
    card_total #return the number and prompt user to hit again
>>>>>>> 92f034b45d81b85bcc3a65e7f28838f74f67104e
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
<<<<<<< HEAD
=======
  prompt_user
  get_user_input
>>>>>>> 92f034b45d81b85bcc3a65e7f28838f74f67104e
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
<<<<<<< HEAD
  welcome
  sleep(0.75)
  ct = initial_round
  until ct > 21
    ct = hit?(ct)
    display_card_total(ct)
  end
  end_game(ct)
end
    
=======
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end

runner 
>>>>>>> 92f034b45d81b85bcc3a65e7f28838f74f67104e
