class Cli


def welcome
    puts "Welcome, space explorer!"
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
    puts "We are glad to have you on board!"
    puts ""
    puts ""
    self.prompt_user
end

def prompt_user
    sleep(2)
    puts "What space galaxy would you like to learn about?"
    puts "Please enter 1-9:"
    input = gets.strip
    #connect to scraper
end

end # end of class