class Ff2020::Rankings
  attr_accessor :name, :team, :url
  
  def self.qb_ranks
    puts "Fantasy Football QB Rankings for 2020:"
    puts <<-DOC
      1. Patrick Mahomes, Kansas City Chiefs
      2. Lamar Jackson, Baltimore Ravens
    DOC
  end

  
  def self.rb_ranks
    puts "Fantasy Football RB Rankings for 2020:"
    puts <<-DOC
      1. Christian McCaffery, Carolina Panthers
      2. Saquan Barkley, New York Giants
    DOC
  end
end