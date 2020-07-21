class Ff2020::Api
  attr_accessor :name, :team, :url
  
  #https://www.fantasypros.com/nfl/rankings/qb-cheatsheets.php
  #<link rel="canonical" href="https://www.fantasypros.com/nfl/rankings/qb-cheatsheets.php">
  #<meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  def self.weekly_rankings
    self.scrape_ranks
  end

  def self.scrape_ranks
    ranks = []

    ranks << self.scrape_cbs
    ranks << self.scrape_ffc

    ranks
  end
  

  def self.scrape_ffc
    doc = Nokogiri::HTML(open("https://fantasyfootballcalculator.com/players/pat-mahomes"))

    ranks = self.new
    qb_one.ranks.name = doc.search("h1.profile-name").text.strip
    qb_one.ranks.team = doc.search("href.kansas-city-chiefs").text


    ranks
  end

  def self.scrape_cbs
    doc = Nokogiri::HTML(open("https://www.cbssports.com/fantasy/football/players/2181169/lamar-jackson/"))

    ranks = self.new
    qb_two.ranks.name = doc.search("h1.player-name").text.strip
    qb_two.ranks.team = doc.search("href="/nfl/teams/BAL/baltimore-ravens/"").text

    ranks
  end
end
  


  
  
  
  
  
  
 