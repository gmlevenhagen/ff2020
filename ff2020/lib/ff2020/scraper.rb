class Ff2020::Scraper
  attr_accessor :name, :url

  @@rankings = []
  
  def self.scrape_nfl
    main_url = "http://nfl.com"
    doc = Nokogiri::HTML(open("https://fantasy.nfl.com/research/projections"))

    i = 0
    while i < 6
      qb_one = self.new
      qb_one.name = doc.search("td")[i].text
      @@rankings
      i += 1
    end
  end
  
  def self.scrape_cbs
    main_url = "http://cbssports.com"
    doc = Nokogiri::HTML(open("https://www.cbssports.com/fantasy/football/players/2142052/patrick-mahomes/"))

    i = 0
    while i < 6
      qb_two = self.new
      binding.pry
      qb_two.name = doc.search("h1").text
      @@rankings
      i += 1
    end
  end
  
  def self.scrape_espn
    main_url = "http://fantasypros.com"
    doc = Nokogiri::HTML(open("https://www.fantasypros.com/nfl/rankings/qb-cheatsheets.php"))

    i = 0
    while i < 6
      qb_three = self.new
      binding.pry
      qb_three.name = doc.search("tr.mpb-player-15600")[i].text
      @@rankings
      i += 1
    end
  end
end