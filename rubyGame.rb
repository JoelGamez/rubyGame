


class Player
    attr_accessor :health, :items, :alive
    attr_reader :name

    def initialize(name)

        @name = name
        @health = 100
        @items = []
        @alive = true

    end

    def add_weapon(weapon)
      self.items.push(weapon)
    end

    def change_health(num)
      self.health += num
          if self.health <= 0
            puts "You lost all of your health!"
            puts "GAME OVER....
                  \n Use the flying Delorean to go back to the begining of this game!"
              system("ruby rubyGame.rb") || system("ruby rubyGame.rb")
          end
    end

end
#/////////////////////////////

class Weapon
    attr_reader :name
    def initialize(name= "nothing")
      @name = name
      @working = true
    end
end


weapon_one = Weapon.new("flamethrower")
weapon_two = Weapon.new("spiked-bat")
weapon_three = Weapon.new("flashlight")
#//////////////////////

class Villain
  attr_accessor :health, :items, :alive
  attr_reader :name
  def initialize(name,health)
    @name = name
    @health = health
    alive = true
  end

  def change_health(num)
    self.health += num
        if self.health <= 0
          self.alive = false
        end
  end

  def attack(damage_amount,opponent)
      opponent.health -= damage_amount
          if opponent.health <=0
            opponent.alive = false
            puts "****#{self.name} defeated #{opponent.name}****"

          end
      return -damage_amount
  end

  def evil_laugh
    puts "Muahahahah"
  end

end
#///////////////////////////
villain_thanos = Villain.new("Thanos",500)
villain_trex = Villain.new("T-Rex",500)
villain_freddy= Villain.new("Freddy Fazzbear",500)



# ********************INTRO*******************************************


puts "*********WELCOME*********\n
      PRESS ENTER\n
      TO BEGIN...".each_line {|c| sleep 0.20; }



key = gets
    if key == "\n"
      system("xdg-open images/docBrownINtro.jpg") || system("open images/docBrownINtro.jpg")
      else
          while key != "\n"
          puts"WHAT ARE YOU CHICKEN? PRESS THE ENTER KEY!"
        key = gets
              if key == "\n"
              system("xdg-open images/docBrownINtro.jpg") || system("open images/docBrownINtro.jpg")
              end
            end

    end


puts "EXCUSE ME!\n Whats your name?"
#
user_name = gets.chomp.capitalize
#
  puts "I'm sorry #{user_name}, there is not much TIME for introductions.
        My name is Dr. Emmett Brown, and I need your help! It appears there has
        has been a cosmic collision between reality, fantasy, dreams, and chaos!
        We need to restore order before there is a MAJOR PARADOX, and the universe
        as we know it destroyed! I need you to explore the east, west, and south regions
        to figure out what is going on! Will you help me? \n\n YES OR NO?"

player_one = Player.new(user_name)
#

  choice_two = gets.chomp.downcase

              if choice_two == "yes"
                puts "\n\nGreat! Get going!"
              elsif choice_two == "no"
                puts "****GAME OVER****
                      \n Use the flying DeLorean to go back to the begining of this game!"
                  system("ruby rubyGame.rb") || system("ruby rubyGame.rb")


                    exit
              else
              end

#**********************1st ACT***********************************************************

puts "The East Region: Dinosaurs Everywhere! \n \n \n".each_line{|c| sleep 0.40; }

puts "\nYou begin your journey, and find your self in an amazon-like jungle. There is a rustle in the bushes!".each_line{|c| sleep 0.40; }

      system(" xdg-open images/raptor.png") || system("open images/raptor.png")

puts " \nWhat will you do? Run or hide?"
choice_three = gets.chomp.downcase


  case choice_three
  when "run"
    puts "\nYou ran and found a flamethrower placed next to a tree\n Will use it? Yes or no? ".each_line{|c| sleep 0.40; }
      choice_three_a = gets.chomp
      case choice_three_a
      when "yes"
        puts "\nThat flame-broiled raptor smells kind of good.."
        player_one.add_weapon(weapon_one)
      when "no"
        puts "\n\nYou managed to get away but fell pretty hard. Your leg is damaged and
              your limping."
        player_one.change_health(-20)
      else
          puts "\n\nWhy did you choose #{choice_three_a}?\n
                That raptor ate you alive. GAME OVER.\n
                TRY AGAIN"
                exit

      end
  when "hide"
    puts "You managed to hide but ended hiding in a pile of DINO POO, and
          might get sick from bacteria infection."
    player_one.change_health(-60)
  else
    puts" \n\nYou choose poorly. #{choice_three.capitalize} didn't work out for you.
          You fell and hit your head pretty hard."
          player_one.change_health(-40)

  end

  if player_one.items.length > 0
    puts "\n\nYour health is at #{player_one.health} perecent. You collected a
    #{player_one.items[0].name}."
  else
    puts "\n\nYour health is at #{player_one.health} perecent."
  end

#**************************ACT 2***********************************************************
 puts "\n\n You finally made your way to the next region.
      Things are starting to get strange. There are vines &
      spores everywhere".each_line{|c| sleep 0.40; }

 puts "This is\n STRANGE".each_line{|c| sleep 0.40; }

 puts "\nYou noticed a treasure-chest. Will you open it?\n******YES OR NO*******".each_line{|c| sleep 0.40; }

 choice_four = gets.chomp.downcase
          case choice_four
          when "yes"
              puts "Great Scott! Is that Steve Harrington's spiked-bat?"
              player_one.add_weapon(weapon_two)
          when "no"
               puts "I just remembered I have some of my great aunt Nana's secret kale juice. It should
                give you some health."
               player_one.change_health(25)
          else
              puts "Why would you say #{choice_four}? Make better choices."

          end
  puts " \n#{player_one.name} watch out! I think thats a Demogorgon!\n
         Swing away #{player_one.name}! What are you going to do?\n ****ATTACK OR DANCE-OFF***** "

  choice_four_two = gets.chomp.downcase


          case choice_four_two
          when "attack"
              puts "Is that a waffle? Do you think we can use it?\n ****YES or NO****"
              choice_four_twob = gets.chomp
              case choice_four_twob
              when "yes"
                puts "\nGOOD JOB! YOU SUMMONED ELEVEN!\n
                      *****Eleven destroyed the  Demogorgon!*****"
              else
                puts "Looks like the Demogorgon was frighten by your #{choice_four_twob} and
                      fled; but it layed a slug inside your intestines.\n"
                  player_one.change_health(-30)
              end
          else
              puts "Looks like the Demogorgon was frighten by your #{choice_four_two} and
                    fled; but it layed a slug inside your intestines.\n"
                player_one.change_health(-30)
          end

                if player_one.items.length >1
    puts "\n#{player_one.name}, you managed to collect a #{player_one.items[0].name}, and
          a #{player_one.items[1].name}. Your health is at #{player_one.health} percent"
                else
                  puts "\n#{player_one.name}, how are you holding up? Your health is at #{player_one.health} percent "
                end

# ************#**********FINAl ACT******************************************************************



puts "Looks like we just barely made it out of the upside-down.\n
      I beleive this final region has been consumed by that frequently shut-down pizzeria with animatronics.
      \nIt seems that the black & white, checkered floor-pattern never ends. Do you see that restraunt over there? The lights are on!. Someone might be inside with answers!\n
      GREAT SCOTT!\n #{player_one.name}.".each_line{|c| sleep 0.40; }

puts "I just remebered I have a small flashlight. Do you want it? \n ******ENTER YES OR NO******".each_line{|c| sleep 0.40; }
choice_flashlight = gets.chomp.downcase
        case choice_flashlight
        when "yes"
          player_one.add_weapon(weapon_three)
        puts "That might come in handy"

        when "no"
           puts "You tripped from on an unseen animatronic part on the floor.".each_line{|c| sleep 0.40; }
           player_one.change_health(-20)
           puts "Your health is at #{player_one.health} percent.".each_line{|c| sleep 0.40; }
        else
          puts "I once said #{choice_flashlight} when I was offered a timeshare...\n Anyways, lets continue. ".each_line{|c| sleep 0.40; }
        end

puts "Do you see those halls? Which way should we go? Left or right?".each_line{|c| sleep 0.40; }
choice_five = gets.chomp.downcase

      case choice_five
      when "left"
          puts "The hallway is so dark...\n What was that noise?\n PRESS 1, 2, or 3".each_line{|c| sleep 0.40; }
          puts "1. Nothing \n 2. Pull out your bat. \n 3. Run the other way".each_line{|c| sleep 0.40; }
          choice_five_b = gets.chomp.downcase
          case choice_five_b
          when "1"
              player_one.change_health(-40)
              system("xdg-open images/Freddy.png") || system("open images/Freddy.png")
              puts "Your health is now at #{player_one.health} percent.".each_line{|c| sleep 0.40; }
          when "2"
              system("xdg-open images/Freddy.png") || system("open images/Freddy.png")
              puts "You managed to smash that animatronic to pieces.".each_line{|c| sleep 0.40; }
              player_one.change_health(-10)
                puts "Your health is now at #{player_one.health} percent.".each_line{|c| sleep 0.40; }
          else
              system("xdg-open images/Freddy.png") || system("open images/Freddy.png")
          end
      else
        puts "Do you hear music?\n Something is behind you! Do something!\n*********PRESS 1, 2, or 3**********".each_line{|c| sleep 0.40; }
        puts "1. Turn around \n 2. Pull out your bat. \n 3. Run ".each_line{|c| sleep 0.40; }
        choice_five_c = gets.chomp.downcase
        case choice_five_c
        when "1"
            player_one.change_health(-40)
            system("xdg-open images/Freddy.png") || system("open images/Freddy.png")
            puts "Your health is now at #{player_one.health} percent.".each_line{|c| sleep 0.40; }
        when "2"
            system("xdg-open images/Freddy.png") || system("open images/Freddy.png")
            puts "You managed to smash that animatronic to pieces.".each_line{|c| sleep 0.40; }
            player_one.change_health(-10)
              puts "Your health is now at #{player_one.health} percent.".each_line{|c| sleep 0.40; }
        else
            system("xdg-open images/Freddy.png") || system("open images/Freddy.png")
            puts "KEEP RUNNING...".each_line{|c| sleep 0.40; }
        end

      end
  puts "Looks like the light is coming from the security office up ahead!".each_line{|c| sleep 0.40; }
  puts "Go on now! Take a look through the office window.".each_line{|c| sleep 0.40; }
  puts  " Are you going to look?\n *****PRESS 1 or 2******,".each_line{|c| sleep 0.40; }
  puts " 1. Okay Doc, watch my back!\n2.Doc, you should go take a peak"
  choice_six = gets.chomp
    case choice_six
    when "1"
      puts "You took a look..and your in shock!".each_line{|c| sleep 0.40; }
        system("xdg-open images/thanos.jpg") || system("open images/thanos.jpg")
    when "2"
      puts "Okay #{player_one.name},\nGREAT SCOTT!\n ITS #{villain_thanos.name.upcase}! He must have used the Infinity Stones to
            cause all these realities to collide!".each_line{|c| sleep 0.40; }
            system("xdg-open images/thanos.jpg") || system("open images/thanos.jpg")

    else
      puts "Let's take a look together!".each_line{|c| sleep 0.40; }
      puts "#{player_one.name}!\nGREAT SCOTT!\n ITS THANOS! He must have used the Infinity Stones to
            cause all these realities to cross!".each_line{|c| sleep 0.40; }
            system("xdg-open images/thanos.jpg") || system("open images/thanos.jpg")

    end
puts "#{villain_thanos.name} saw you. He will erase you on Doc Brown if he gets the chance.
      \n#{villain_thanos.name} starts swinging his fists at you and the Doc. What will you do?
      \n********PRESS 1 OR 2********
      \n1. dodge
      \n2. run".each_line{|c| sleep 0.40; }
final_choice = gets.chomp
    case final_choice
    when "1"
      system("xdg-open images/trex.png") || system("open images/trex.png")

        puts "You dodged and managed to cause him to stumble.
              \n A T-Rex broke through the roof and swallowed Thanos alive.
              \nDoc Brown: Great Scott!\n You did it #{player_one.name}.
              \nThe universe should reset back to its natural order in any moment!
              \nThanks for all your help!".each_line{|c| sleep 0.40; }
                villain_trex.attack(600,villain_thanos)
              if player_one.items.length > 0
                puts "You managed to collect a".each_line{|c| sleep 0.40; }
                player_one.items.each{|item| puts "- #{item.name} "}
              end
        puts "You finished the game your health at #{player_one.health} percent!
              \n GREAT JOB!".each_line{|c| sleep 0.40; }

    when "2"
        puts "Its over..As you and Doc ran, #{villain_thanos.name} snapped his fingers and you were all erased.
              \nThanks for playing...Try again..".each_line{|c| sleep 0.40; }

                if player_one.items.length > 0
                  puts "You managed to collect a".each_line{|c| sleep 0.40; }
                  player_one.items.each{|item| puts "- #{item.name} "}
                end
          puts "You finished the game your health at #{player_one.health} percent.".each_line{|c| sleep 0.40; }
          player_one.change_health(villain_thanos.attack(300,player_one))

    else
        puts " Great Scott!\n You cause a major paradox by choosing to #{final_choice}"
        puts "You finished the game with health at #{player_one.health} percent,
              and managed to collect a"
        player_one.items.each{|item| puts "- #{item.name}"}
        player_one.change_health(villain_thanos.attack(300,player_one))


    end
