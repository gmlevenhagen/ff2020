class Ff2020::CLI
  
  def call
    qb_one
    qb_two
    qb_three
    rankings1
    rb_one
    rb_two
    rb_three
    rankings2
    goodbye
  end
  
  def qb_one
    @api = Ff2020::Api.tier_1qb
  end
  
  def qb_two
    @api = Ff2020::Api.tier_2qb
  end
  
  def qb_three
    @api = Ff2020::Api.tier_3qb
  end
  
  def rb_one
    @api = Ff2020::Api.tier_1rb
  end
  
  def rb_two
    @api = Ff2020::Api.tier_2rb
  end
  
  def rb_three
    @api = Ff2020::Api.tier_3rb
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
      when "3"
        puts "#{qb_three}"
      when "list"
        qb_one
        qb_two
        qb_three
      else
        puts "Not a tier listed: please type a QB tier(1-3) or exit."
      end
    end
  end
  
  def rankings2
    puts "Enter what tier you would like to see from RB(1-3) rankings or exit"
    input = nil
    while input != "exit"
      input = gets.strip
      case input
      when "1"
        puts "#{rb_one}"
      when "2"
        puts "#{rb_two}"
      when "3"
        puts "#{rb_three}"
      when "list"
        rb_one
        rb_two
        rb_three
      else
        puts "Not a tier listed: please type a RB tier or exit."
      end
    end
  end
  
    def goodbye
      puts "Come back weekly for updated rankings!"
    end
  end