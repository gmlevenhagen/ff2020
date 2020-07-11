class Ff2020::CLI
  
  def call
    qb_rankings
    rb_rankings
    wr_rankings
    rankings
    goodbye
  end
  
  def qb_rankings
    @ranking = Ff2020::Rankings.qb_ranks
  end
  
  def rb_rankings
   @ranking = Ff2020::Rankings.rb_ranks
  end
  
  def wr_rankings
     @ranking = Ff2020::Rankings.wr_ranks
  end
  
  def rankings
    puts "Enter what position you would want to see rankings or exit"
    input = nil
    while input != "exit"
      input = gets.strip
      case input
      when "QB"
        puts "#{qb_rankings}"
      when "RB"
        puts "#{rb_rankings}"
      when "WR"
        puts "#{wr_rankings}"
      when "list"
        qb_rankings
        rb_rankings
      else
        puts "Not a rankings list: please type a position or exit."
      end
    end
  end
  
  def goodbye
    puts "Come back weekly for updated rankings!"
  end
end