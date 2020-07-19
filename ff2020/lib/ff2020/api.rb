class Ff2020::Api
  
  
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
    doc = Nokogiri::HTML(open("https://fantasyfootballcalculator.com"))

    ranks = self.new
    ranks.name = doc.search("h1.profile-name").text.strip
    ranks.team = doc.search("href="/kansas-city-chiefs"").text
    ranks.url = "<script type="text/javascript" src="https://api.getdrip.com/client/track?url=https%3A%2F%2Ffantasyfootballcalculator.com%2Fplayers%2Fpat-mahomes&amp;visitor_uuid=5141e363ca1647fca6eeef6693d12c19&amp;category=Players&amp;label=Pat%20Mahomes&amp;_action=Player%20Page%20Viewed&amp;drip_account_id=3742580&amp;callback=Drip_182813046"></script>"


    ranks
  end

  def self.scrape_cbs
    doc = Nokogiri::HTML(open("https://cbssports.com"))

    ranks = self.new
    ranks.name = doc.search("h1.class = "player-name"").text
    ranks.team = doc.search("href="/nfl/teams/BAL/baltimore-ravens/"").text
    ranks.url = "https://www.cbssports.com/fantasy/football/players/2181169/lamar-jackson/"

    ranks
  end
end
  
  
 