# Text-based Game Challenge

def start_game
    puts "\nWelcome to you the Meta World!"
    puts "Select Your Power (Teleportation, Speed, Flying):"

    puts "> "
    option = gets.chomp.downcase
    
    if option == "teleportation"
        teleportation()
    elsif option == "speed"
        speed()
    elsif option == "flying"
        flying()
    else
        puts "\nSorry, that's not a valid choice. Please try again.\n"
        start_game()
    end
end

def teleportation
    puts "\nOk, you've chosen the power to teleport anywhere."
    puts "Now choose your fate, Hero or Villain?"
    
    puts "> "
    fate_selection = gets.chomp.downcase
    
    if fate_selection == "hero"
        puts "\ngo save the President"
        hero()
    elsif fate_selection == "villain"
        puts "\ndestroy the White House"
        villain()
    else
        puts ""
        puts "YOU MUST CHOOSE YOUR FATE!!!!\n"
        teleportation()
    end
end

def speed
    puts "\nOk, you've chosen the power to have super speed."
    puts "Now choose your fate, Hero or Villain?"
    
    puts "> "
    fate_selection = gets.chomp.downcase
    
    if fate_selection == "hero"
        puts "\ngo save the President.\n"
        hero()
    elsif fate_selection == "villain"
        puts "\ndestroy the White House.\n"
        villain()
    else
        puts "\nYOU MUST CHOOSE YOUR FATE!!!!\n"
        speed()
    end
end

def flying
    puts "\nOk, you've chosen the power to soar through the sky."
    puts "Now choose your fate, Hero or Villain?"
    
    puts "> "
    fate_selection = gets.chomp.downcase
    
    if fate_selection == "hero"
        puts "\ngo save the President.\n"
        hero()
    elsif fate_selection == "villain"
        puts "\nconquer the White House.\n"
        villain()
    else
        puts "\nYOU MUST CHOOSE YOUR FATE!!!!\n"
        flying()
    end
end

def hero 
    puts "\nFind the President's kiddnapper"
    puts "Clues were left behind leading to two cities: (Gotham or Metropolis)"

    puts "> "
    city_selection = gets.chomp.downcase

    if city_selection == "gotham"
        puts "\nthere is no sign of the President here!!!!!\n"
        hero()
    elsif city_selection == "metropolis"
        puts "\nThere are two villains in the city, find which of them has the President.\n"
        metropolis()
    else
        puts "\nThey can always find a new President anyways. Try Again\n"
        hero()
    end
end

def villain 
    puts "\nUse your new powers to acquire a weapon that can take over the White House"
    puts "You've tracked down two weapon warehouses on the EAST and WEST coast. Choose your facility:"

    puts "> "
    facility_selection = gets.chomp.downcase

    if facility_selection == "east"
        puts "\nThis warehouse contains small fire arms, no good try again.\n"
        villain()

    elsif facility_selection == 'west'
        puts "\nYou've found some weapons!!!!!\n"
        weapon_choice()
    
    else
        puts "\nyou cannot not do this, YOU ARE A VILLAIN!!!!"
        puts "Try Again\n"
        villain()
    end
end

def weapon_choice 
    puts "\nThere are missiles and laughing gas, pick your poison."
    
    puts "> "
    weapon_selection = gets.chomp.downcase

    if weapon_selection == 'missiles'
        puts " 
            _.-^^---....,,--       
        _--                  --_  
       <                        >)
       |                         | 
        \._                   _./  
           ```--. . , ; .--'''       
                 | |   |             
              .-=||  | |=-.   
              `-=#$%&%$#=-'   
                 | ;  :|     
        _____.,-#%&$@%#&#~,._____"
        puts "\nCongratulations White House Secured\n"
        game_over_villain()
    
    elsif weapon_selection == 'laughing gas'
        puts "\nNice job you got yourself with the laughing gas\n"
        puts "              .:.               
                           .::::.             
            ..          ..::::::''::         
            ::::..  .::''''':::    ''.      
            ':::::::'         '.  ..  '.    
            ::::::'            : '::   :   
            :::::     .        : ':'   :  
            :::::    :::       :.     .'. 
            .::::::    ':'     .' '.:::: : 
            ::::::::.         .    ::::: : 
            :::::    '':.... ''      '''' : 
            ':::: .:'              ...'' :  
            ..::.   '.........:::::'   :   
            '':::.   '::'':'':::'   .'    
            '..  ''.....'  ..'      
                ''........''"
        puts "GAME OVER"
        start_game()
    else
        puts "Pick a valid choice."
        weapon_choice()
    end
end

def metropolis
    puts "\nEither Mojo Jojo or Plankton"
    puts "Who's lair are you raiding first?"
    
    puts "> "
    terrorist_groups = gets.chomp.downcase

    if terrorist_groups == 'mojo jojo'
        puts "\nPresidents clipped nice job, Plankton got him. Try again next time\n"
        puts "                                                       ___
                                                      |_  |
                                                        | |
__                      ____                            | |
\ ````''''----....____.'\   ````''''--------------------| |--.               _____      .-.
 :.                      `-._                           | |   `''-----''''```     ``''|`: :|
  '::.                       `'--.._____________________| |                           | : :|
    '::..       ----....._______________________________| |                           | : :|
      `'-::...__________________________________________| |   .-''-..-'`-..-'`-..-''-.cjr :|
           ```'''---------------------------------------| |--'                         `'-'
                                                        | |
                                                       _| |
                                                      |___| cjr"
        game_over_hero()
    elsif terrorist_groups == 'plankton'
        puts "\nLucky pick, guess you should save the president"
        puts '
          _____________________________________________
        //:::::::::::::::::::::::::::::::::::::::::::::\\
      //:::_______:::::::::________::::::::::_____:::::::\\
    //:::_/   _-"":::_--"""        """--_::::\_  ):::::::::\\
   //:::/    /:::::_"                    "-_:::\/:::::|^\:::\\
  //:::/   /~::::::I__                      \:::::::::|  \:::\\
  \\:::\   (::::::::::""""---___________     "--------"  /::://
   \\:::\  |::::::::::::::::::::::::::::""""==____      /::://
    \\:::"\/::::::::::::::::::::::::::::::::::::::\   /~::://
      \\:::::::::::::::::::::::::::::::::::::::::::)/~::://
        \\::::\""""""------_____::::::::::::::::::::::://
          \\:::"\               """""-----_____:::::://
            \\:::"\    __----__                )::://
              \\:::"\/~::::::::~\_         __/~:://
                \\::::::::::::::::""----""":::://
                  \\::::::::::::::::::::::::://
                    \\:::\^""--._.--""^/::://
                      \\::"\         /":://
                        \\::"\     /":://
                          \\::"\_/":://
                            \\::::://
                              \\_//
                                "'
        puts "            YOU WIN!!!!!!\n              "
        
        start_game()

    else
        puts "\nYou have to beat someone up.\n"
        metropolis()
    end
end


def game_over_hero
    puts "\nGame Over. Can't save'em all.\n"
    start_game()
end

def game_over_villain
    puts "\nGame Over. Nice Mayhem.\n"
    start_game()
end

start_game()

