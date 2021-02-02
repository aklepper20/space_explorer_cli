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
    
    puts  "- Mercury"
    puts  "- Venus"
    puts  "- Earth"
    puts  "- Mars"
    puts  "- Jupiter"
    puts  "- Saturn"
    puts  "- Neptune"
   self.start
end

def start
    puts "Please type in the planet you want to learn about."
    input = gets.strip.downcase

    if ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "neptune"].include?(input) && Space.find_by_name(name)  #!!! see if the name entered matches the array in @name 
       new_planet = Space.find_by_name(name)
        self.info_or_fact(new_planet) 
    elsif ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "neptune"].include?(input)
        new_planet = Scraper.new.get_page(input)
        self.info_or_fact(new_planet)
    else
        puts "Houston, we have a problem. Type a planet again, explorer!"
        self.start
    end
end

#def info_or_fact(new_planet)  !!!it puts either the fact or info to the corresponding planet
    #puts "Explorer, would you like a fact or information on your chosen planet? Enter the number:"
    #input = gets.strip.downcase
    #if number == "1"
    #puts #{self.fun_fact}
     #elsif input == "2"
    #puts #{self.info}
    #else 
    #puts "Are you speaking alien again, Explorer? Try again"
    #end
#end

#def main_menu#
  # puts "Would you like to see the list again? y or n"
   #input = gets.strip.downcase
   #if input == "y"
   # self.start
   #else
    #self.exit
   #end
#end

#def exit
#abort("Mission complete! Nice work, explorer!")
#end

#end
end # end of class


Cli.new.welcome
