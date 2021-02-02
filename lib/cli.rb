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

def user_menu
    puts "Please type in planet would you like to learn more about?" 
    Space.all.each.with_index(1) {|p, i| puts "#{i}.) #{p.name}"}
    input = gets.strip.downcase
    if input == self.list_planets
        self.display_info_fact
    else
        puts "Seems like you're a little lost, explorer! Type the planet again!"
        self.user_menu
    end
end

 
def display_info_fact
    puts "Please enter 1. for a fun fact, or 2. for the planet's information!"
    input == gets.strip.downcase 
    if input == "1"
        Space.all.each.with_index(1) {|p, i| puts "#{i}.) #{p.fun_fact}"}
    elsif input == "2"
        Space.all.each.with_index(1) {|p, i| puts "#{i}.) #{p.info}"}
    else

    end
end

def main_menu

end

def exit

end
end # end of class

Cli.new.welcome

