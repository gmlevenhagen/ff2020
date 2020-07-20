class Ff2020::CLI
  
  def call
    list_qb
    list_rb
    goodbye
  end
  
  
    def list_qb
    puts "QB Tiers(1-3):"
    @qb_rank = Ff2020::Api
      puts "#{i}. #{ranks.name} - #{ranks.team}"
    end
  end
  
  def tier_qb
    input = nil
    while input != "exit"
      puts "Please enter the QB tier you want(1-3) or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        qb_tier = @qb_rank[input.to_i-1]
        puts "#{i}. #{ranks.name} - #{ranks.team}"
      elsif input == "tiers"
        list_qb
      else
        puts "Please type 1,2, or 3 for tier or exit."
      end
    end
  end
  
  
  def list_rb
    puts "RB Tiers(1-3):"
    @tier_rb = Ff2020::Api
    @tier_rb.each.with_index(1) do |tier, i|
      puts "#{i}. #{rb.name} - #{rb.team}"
    end
  end
  
  def list_rb
    input = nil
    while input != "exit"
      puts "Please enter the RB tier you want(1-3) or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        rb_rank = @tier_rb[input.to_i-1]
        puts "#{i}. #{rb.name} - #{rb.team}"
      elsif input == "list_rb"
        list_rb
      else
        puts "Please type 1,2, or 3 for tier or exit."
      end
    end
  end

    def goodbye
      puts "Come back weekly for updated rankings!"
    end
    
end