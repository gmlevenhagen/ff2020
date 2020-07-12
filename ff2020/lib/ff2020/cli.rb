class Ff2020::CLI
  
  def call
    qb_one
    qb_two
    qb_three
    rankings
    goodbye
  end
  
  def qb_one
    @ranking = Ff2020::Rankings.tier_1
  end
  
  def qb_two
    @ranking = Ff2020::Rankings.tier_2
  end
  
  def qb_three
    @ranking = Ff2020::Rankings.tier_3
  end
  
  def rankings
    puts "Enter what tier you would like to see from QB rankings or exit"
    input = nil
    while input != "exit"
      input = gets.strip
      case input
      when "1"
        puts "#{qb_one}"
      when "2"
        puts "#{qb_two}"
      when "3"
        puts "#{qb_three}"
      when "list"
        qb_one
        qb_two
        qb_three
      else
        puts "Not a tier listed: please type a QB tier or exit."
      end
    end
  end
  
    def goodbye
      puts "Come back weekly for updated rankings!"
    end
  end
