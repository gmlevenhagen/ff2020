class Ff2020::Rankings
  attr_accessor :name, :team, :url
  
  def self.tier_1
    puts "Fantasy Football QB Tier 1 for 2020:"
    puts <<-DOC
      QB Tier 1:
      1. Patrick Mahomes, Kansas City Chiefs
      2. Lamar Jackson, Baltimore Ravens
    DOC
  end
  
  def self.tier_2
    puts "Fantasy Football QB Tier 2 for 2020:"
    puts <<-DOC
      QB Tier 2:
      1. Dak Prescott, Dallas Cowboys
      2. Russell Wilson, Seattle Seahawks
      3. Deshaun Watson, Houston Texans
      4. Kyler Murray, Arizona Cardinals
    DOC
  end
  
  def self.tier_3
    puts "Fantasy Football QB Tier 3 for 2020:"
    puts <<-DOC
      QB Tier 3:
      1. Aaron Rodgers, Green Bay Packers
      2. Matt Ryan, Atlanta Falcons
      3. Carson Wentz, Philadelphia Eagles
      4. Drew Brees, New Orlean Saints
      5. Tom Brady, New England Patriots
    DOC
  end
end