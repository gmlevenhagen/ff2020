class Ff2020::Api
  
  
  
  
  #https://www.fantasypros.com/nfl/rankings/qb-cheatsheets.php
  #<link rel="canonical" href="https://www.fantasypros.com/nfl/rankings/qb-cheatsheets.php">
  #<meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  def self.tier_1qb
    puts "Fantasy Football QB Tier 1 for 2020:"
      puts <<-DOC
        QB Tier 1:
        1. Patrick Mahomes, Kansas City Chiefs
        2. Lamar Jackson, Baltimore Ravens
      DOC
     end
  
    def self.tier_2qb
      puts "Fantasy Football QB Tier 2 for 2020:"
       puts <<-DOC
         QB Tier 2:
         1. Dak Prescott, Dallas Cowboys
         2. Russell Wilson, Seattle Seahawks
         3. Deshaun Watson, Houston Texans
         4. Kyler Murray, Arizona Cardinals
        DOC
     end
  
  def self.tier_3qb
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
  
  #https://www.fantasypros.com/nfl/rankings/ppr-rb-cheatsheets.php
  #<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  #<link rel="canonical" href="https://www.fantasypros.com/nfl/rankings/ppr-rb-cheatsheets.php"/>
  
  def self.tier_1rb
    puts "Fantasy Football RB Tier 1 for 2020:"
    puts <<-DOC
      RB Tier 1:
      1. Christian McCaffery, Carolina Panthers
      2. Saquan Barkley, New York Giants
      3. Ezekiel Elliot, Dalls Cowboys
    DOC
  end
  
  def self.tier_2rb
    puts "Fantasy Football RB Tier 2 for 2020:"
    puts <<-DOC
      RB Tier 2:
      1. Alvin Kamara, New Orlean Saints
      2. Russell Wilson, Seattle Seahawks
      3. Deshaun Watson, Houston Texans
      4. Kyler Murray, Arizona Cardinals
    DOC
  end
  
  def self.tier_3rb
    puts "Fantasy Football RB Tier 3 for 2020:"
    puts <<-DOC
      QB Tier 3:
      1. Kenyan Drake, Arizona Cardinals
      2. Matt Ryan, Atlanta Falcons
      3. Carson Wentz, Philadelphia Eagles
      4. Drew Brees, New Orlean Saints
      5. Tom Brady, New England Patriots
    DOC
  end
end