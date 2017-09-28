# this method restarts the game if player dies and wants to restart the game.
def restart
  puts "Would you like to restart the game?"
  puts "(YES) or (NO)\n"
  user_restart = gets.chomp.downcase
  case user_restart
  when "yes"
    load "wyncode_xp.rb"
  when "no"
    puts "\nThanks for playing!\n"
  else
    restart
  end
end
slow = Proc.new {|c| print c; sleep 0.02}
fast = Proc.new {|c| print c; sleep 0.001}
wyncode = "
#   _     _  __   __  __    _  _______  _______  ______   _______
#  | | _ | ||  | |  ||  |  | ||       ||       ||      | |       |
#  | || || ||  |_|  ||   |_| ||       ||   _   ||  _    ||    ___|
#  |       ||       ||       ||       ||  | |  || | |   ||   |___
#  |       ||_     _||  _    ||      _||  |_|  || |_|   ||    ___|
#  |   _   |  |   |  | | |   ||     |_ |       ||       ||   |___
#  |__| |__|  |___|  |_|  |__||_______||_______||______| |_______|
#                         __   __  _______
#                        |  |_|  ||       |
#                        |       ||    _  |
#                        |       ||   |_| |
#                         |     | |    ___|
#                        |   _   ||   |
#                        |__| |__||___|\n
"
dead = "
#   __   __  _______  __   __  __   ______    _______
#  |  | |  ||       ||  | |  ||  | |    _ |  |       |
#  |  |_|  ||   _   ||  | |  ||__| |   | ||  |    ___|
#  |       ||  | |  ||  |_|  |     |   |_||_ |   |___
#  |_     _||  |_|  ||       |     |    __  ||    ___|
#    |   |  |       ||       |     |   |  | ||   |___
#    |___|  |_______||_______|     |___|  |_||_______|
#   ______   _______  _______  ______   __
#  |      | |       ||   _   ||      | |  |
#  |  _    ||    ___||  |_|  ||  _    ||  |
#  | | |   ||   |___ |       || | |   ||  |
#  | |_|   ||    ___||       || |_|   ||__|
#  |       ||   |___ |   _   ||       | __
#  |______| |_______||__| |__||______| |__|\n
"
awesome = "
#   __   __  _______  __   __  __   ______    _______
#  |  | |  ||       ||  | |  ||  | |    _ |  |       |
#  |  |_|  ||   _   ||  | |  ||__| |   | ||  |    ___|
#  |       ||  | |  ||  |_|  |     |   |_||_ |   |___
#  |_     _||  |_|  ||       |     |    __  ||    ___|
#    |   |  |       ||       |     |   |  | ||   |___
#    |___|  |_______||_______|     |___|  |_||_______|
#   _______  _     _  _______  _______  _______  __   __  _______  __
#  |   _   || | _ | ||       ||       ||       ||  |_|  ||       ||  |
#  |  |_|  || || || ||    ___||  _____||   _   ||       ||    ___||  |
#  |       ||       ||   |___ | |_____ |  | |  ||       ||   |___ |  |
#  |       ||       ||    ___||_____  ||  |_|  ||       ||    ___||__|
#  |   _   ||   _   ||   |___  _____| ||       || ||_|| ||   |___  __
#  |__| |__||__| |__||_______||_______||_______||_|   |_||_______||__|\n
"
hobo = "
#   __   __  _______  _______  _______
#  |  | |  ||       ||  _    ||       |
#  |  |_|  ||   _   || |_|   ||   _   |
#  |       ||  | |  ||       ||  | |  |
#  |       ||  |_|  ||  _   | |  |_|  |
#  |   _   ||       || |_|   ||       |
#  |__| |__||_______||_______||_______|
#   ___      ___   _______  _______  __
#  |   |    |   | |       ||       ||  |
#  |   |    |   | |    ___||    ___||  |
#  |   |    |   | |   |___ |   |___ |  |
#  |   |___ |   | |    ___||    ___||__|
#  |       ||   | |   |    |   |___  __
#  |_______||___| |___|    |_______||__|\n
"
jail = "
#   _______  _______    _______  _______
#  |       ||       |  |       ||       |
#  |    ___||   _   |  |_     _||   _   |
#  |   | __ |  | |  |    |   |  |  | |  |
#  |   ||  ||  |_|  |    |   |  |  |_|  |
#  |   |_| ||       |    |   |  |       |
#  |_______||_______|    |___|  |_______|
#       ___  _______  ___   ___      __
#      |   ||   _   ||   | |   |    |  |
#      |   ||  |_|  ||   | |   |    |  |
#      |   ||       ||   | |   |    |  |
#   ___|   ||       ||   | |   |___ |__|
#  |       ||   _   ||   | |       | __
#  |_______||__| |__||___| |_______||__|
  \nDo not pass go. Do not collect $200.\n
"
# intro to game
wyncode.each_char(&fast)
puts "\nPlease maximize your Terminal window for best game experience!"
puts "Press ctrl + c to exit the game. "
puts "Press enter when ready to start..."
user_start_game = gets
"\nYou are walking through Wynwood on a lovely Miami day!
The sun's not too bad and the breeze is just right.😎
When all of the sudden, a bird takes a 💩  on your shirt!
You stop and start wiping the 💩  off your shirt.
You remember that your grandma used to say:
\"It's good luck if a bird 💩's on you... blah, blah, blah...\"
That's when you notice a sign that reads:
\n
         WYNCODE\n
    \"The art of code\"\n
      LEARN TO CODE\n
You take this as a sign from the code gods!!!!! 🙏 🙌\n".each_char(&slow)
# starts decision-making
"\nWhat would you like to do?".each_char(&slow)
"\nOptions are:\n
  (GO) Go inside\n
  (WALK) Keep walking\n
  (DO) Do something else\n".each_char(&slow)
decision1 = gets.chomp.downcase
# first case statement
case decision1
when "go"
  "\nYou walk inside and you see a person sitting down with his headphones on.
You ask him what this place is all about.\n
He says \"Hi, I'm Matt. Welcome to Wyncode.
\"We are a coding bootcamp that teaches business acumen.\"
\"Would you like to enroll?\"\n".each_char(&slow)
  "\nOptions are:\n
  (YES) or (NO)\n".each_char(&slow)
  decision2 = gets.chomp.downcase
  # second case statement
  case decision2
  when "yes"
    "\nGreat! You enroll in the program and you start the course.
During the first week, you write your first Ruby program!
It's a tip calculator that also splits the bill.
    \nWould you like to show off your program?\n".each_char(&slow)
    "Options are:\n
  (YES) or (NO)\n".each_char(&slow)
    decision3 = gets.chomp.downcase
    # third case statement
    case decision3
    when "yes"
      # Asks user for input of bill amount, tip percent and amount of people
      puts "\nTIP CALCULATOR\n"
      puts "\nWhat is the bill amount?"
      print "$:"
      bill = gets.to_f
        if bill <= 0
          puts "Your meal is free??????"
          puts "Please enter correct amount in numbers."
          print "$:"
          bill = gets.to_f
        end
      puts "\nWhat percentage of tip would you like to leave?"
      tip = gets.to_f
        if tip < 0
          puts "Please enter a positive number between 0 and 100"
          tip = gets.to_f
        end
      puts "\nHow many people are splitting the bill?"
      people = gets.chomp.to_f
        if people < 1
          puts "You need at least \"1\" person!"
          puts "Please enter a positive whole number."
          people = gets.chomp.to_f
        end
      # this adds tip percentage to bill amount and splits it amongst all persons
      tip_amount = bill * tip/100
      total = bill + tip_amount
      split = (total / people).to_f
      # #this shows that amount to pay
      puts "\nReceipt:"
      puts "Sub-Total: $%.2f" % bill
      puts "Tip amount: $%.2f" % tip_amount
      puts "Total: $%.2f" % total
      puts "Party size: #{people.to_i}"
      puts "Amount per person including tip: $#{split.round(2)}" % split
      puts "\nTip calculator program finished running."
      puts "Press enter to continue the game..."
      user_continue_game = gets
      "\n\"Oki-dokes...\" says Austen, with a smirk on his face.
You continue to improve your coding skills during the course.
You struggle trying to keep up but in the end, you graduate.
Soon after, you land a great job at an awesome startup in Miami!".each_char(&slow)
      awesome.each_char(&fast)
    when "no"
      "\nYou continue to improve your coding skills during the course.
You struggle trying to keep up but in the end, you graduate.
Soon after, you land a great job at an awesome startup in Miami!".each_char(&slow)
      awesome.each_char(&fast)
    else
      "\nThat makes no sense.
Because of this answer you realize that you can never learn how to code...
You drop out of the course and you become a bum on the streets of Miami.\n"
      hobo.each_char(&fast)
      restart
    end
  when "no"
    "\"Ok, well thanks for stopping by\" says Matt.
You keep walking and just when you are about to turn back...
A zombie comes out of nowhere and takes a bite out of your neck.
You try to fight him off but you are bleeding too much...
You die and you have no continues left. ☠️ \n ".each_char(&slow)
    dead.each_char(&fast)
    restart
  else
    "\n\"Ok, well thanks for stopping by\" says Matt.
You keep walking and just when you are about to turn back...
A zombie comes out of nowhere and takes a bite out of your neck.
You try to fight him off but you are bleeding too much...
You die and you have no continues left. ☠️ \n ".each_char(&slow)
    dead.each_char(&fast)
    restart
  end
when "walk"
"\nYou keep walking and just when you are about to turn back...
A zombie comes out of nowhere and takes a bite out of your neck.
You try to fight him off but you are bleeding too much...
You die and you have no continues left. ☠️ \n".each_char(&slow)
  dead.each_char(&fast)
  restart
when "do"
"\nYou pick up a rock and throw it at the Wyncode building.😤
Someone inside calls the cops and they arrest you.
Good job! You are now a felon...\n".each_char(&slow)
  jail.each_char(&fast)
  restart
else
  "\nYou waited too long...
  A horde of zombies caught up to you! ☠️".each_char(&slow)
  dead.each_char(&fast)
  restart
end
