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
   self.start
end

def start
    puts "Please type in the planet you want to learn about."
    input = gets.strip.downcase
    Space.all.each do |p| 
        puts "#{p.name}"
    end
    input = gets.strip.downcase
    if input == p.name
        self.info_or_fact
    else
        puts "Houston, we have a problem. Type a planet again, explorer!"
        self.start
    end
end

#def info_or_fact
    #puts "Explorer, would you like a fact or information on your chosen planet? Enter the number:"
    #Space.all.each.with_index(1) do |p, i| 
        #puts "#{i}.) #{p.fun_fact}
    #end
    #input = gets.strip.downcase
    #if input == "1" 
        #{i}.) #{p.fun_fact}
    #elsif input == "2"
    ##{i}.) #{p.fun_fact}
    #self.main_menu
    #else
    # puts "Are you speaking alien? Enter number again, explorer!
    #end"
#end

def main_menu
   puts "Would you like to see the list again? y or n"
   input = gets.strip.downcase
   if input == "y"
    self.start
   else
    self.exit
   end
end

def exit
abort("Mission complete! Nice work, explorer!")
end

end
end # end of class

Cli.new.welcome

