require 'pry'

class Cli

def welcome
    puts <<-'explorer'
      _..._
    .'     '.      _
   /    .-""-\   _/ \
 .-|   /:.   |  |   |
 |  \  |:.   /.-'-./
 | .-'-;:__.'    =/
 .'=  *=|NASA _.='
/   _.  |    ;
;-.-'|    \   |
/   | \    _\  _\
\__/'._;.  ==' ==\
       \    \   |
       /    /   /
       /-._/-._/
       \   `\  \
        `-._/._/
explorer
    puts ""
    puts "Greetings, Space explorer!"
    sleep(1)
    puts "We are glad to have you aboard our spaceship"
    sleep(2)
   self.user_selection
end

def user_selection
    puts ""
    puts ""
    puts "Please type in planet would you like to learn more about?"
    puts <<-'DOC'
        1. Mercury
        2. Venus
        3. Earth
        4. Mars
        5. Jupiter
        6. Saturn
        7. Uranus
        8. Neptune
    DOC
    self.user_menu
end

def user_menu
    input = gets.strip.downcase
    case input
    when "mercury"
        
end

#def display_space
    #call on space class for planets then index_with_each(1)
    #puts "index and then either planet name"
    #end

    #def display_planet_info
    #call on space class with index and place planet info
    #end

    #def exit
    #options of giving another number or exiting program
    #end

end # end of class

Cli.new.welcome