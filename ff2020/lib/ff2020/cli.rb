class Ff2020::CLI
  
  def call
    qb_rankings
    rb_rankings
    wr_rankings
    rankings
    goodbye
  end
  
  def qb_rankings
    puts "Fantasy Football QB Rankings for 2020:"
    puts <<-DOC
      1. Lamar Jackson, Baltimore
      2.Patrick Mahomes, Kansas City
    DOC
  end
  
  def rb_rankings
    puts "Fantasy Football RB Rankings for 2020:"
    puts <<-DOC
      1. Christian McCaffery, Carolina Panthers
      2. Saquan Barkley, New York Giants
    DOC
  end
  
  def wr_rankings
    puts "Fantasy Football WR Rankings for 2020:"
    puts <<-DOC
      1. Michael Thomas, New Orleans Saints
      2. Julio Jones, Atlanta Cardinals
    DOC
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