
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
    self.display_planets
end

def display_planets
    puts ""
    puts ""
    puts "Please type in the planet you want to learn about."
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
    input = gets.strip.downcase

    if ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "neptune"].include?(input) && Space.find_by_name(input) 
        new_planet = self.info_or_fact(input) 
    elsif ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "neptune"].include?(input)
        new_planet = Scraper.new.scrape(input)
        binding.pry
        self.info_or_fact(new_planet)
    else
        puts "Houston, we have a problem. Type a planet in again, Explorer!"
        self.start
    end
end

def info_or_fact(new_planet)  
    puts "Explorer, would you like a fact or information on your chosen planet? Enter the number:"
    input = gets.strip
    if input == "1" 
         puts "#{new_planet.fun_fact}"
        
    elsif input == "2"
        puts "#{new_planet.info}"
       
    else
    puts "Are you speaking alien again, Explorer? Try again"
    end
    self.main_menu
end

#def main_menu
    #puts "Would you like to see the list again? y or n"
   #input = gets.strip.downcase
   #if input == "y" 
     #self.start 
   #elsif input == "n"
      #self.exit
   #else
    #puts "I don't understand. Enter selection again!"
   #end
#end

#def exit
    #abort("Mission complete! Nice work, explorer!")
#end

end # end of class



