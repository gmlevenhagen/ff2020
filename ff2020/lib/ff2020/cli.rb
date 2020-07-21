class Ff2020::CLI
  
  def call
    welcome
    rankings1
    list_qb
    goodbye
  end
  
  
  def welcome
    puts "  "
    puts " ----------------------------------------------"
    puts " Welcome to Fanatasy Football Rankings 2020!!!!"   
    puts " ----------------------------------------------"
    puts "  "
    puts "  "
    
    
    
  end
  
  
  def rankings1
    puts "Enter what tier you would like to see from QB rankings or exit"
    input = nil
    while input != "exit"
      input = gets.strip
      case input
      when "1"
        puts "#{qb_one}"
      when "2"
        puts "#{qb_two}"
      when "list"
        qb_one
        qb_two
      else
        puts "Not a tier listed: please type a QB tier(1-3) or exit."
      end
    end
  end
 

    def goodbye
      puts "Come back weekly for updated rankings!"
    end
end