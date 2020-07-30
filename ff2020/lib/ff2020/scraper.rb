class Ff2020::Scraper
  attr_accessor :name, :url

  @@rankings = []

  def self.scrape_espn
    main_url = "http://espn.go.com"
    doc = Nokogiri::HTML(open("https://www.espn.com/fantasy/football/story/_/page/DraftRanks20QBPPR2/updated-2020-fantasy-football-draft-rankings"))

    i = 0
    while i < 6
      espn_rankings = self.new
      espn_rankings.name = doc.search("table")
      @@rankings
      i += 1
    end
  end
  
  def self.scrape_nfl
    main_url = "http://nfl.com"
    doc = Nokogiri::HTML(open("https://www.nfl.com/players/patrick-mahomes/"))

    i = 0
    while i < 6
      nfl_rankings = self.new
      nfl_rankings.name = doc.search("h1").text
      @rankings
      i += 1
    end
  end
  
  def self.scrape_cbs
    main_url = "http://cbssports.com"
    doc = Nokogiri::HTML(open("https://www.cbssports.com/fantasy/football/rankings/ppr/QB/"))

    i = 0
    while i < 6
      cbs_rankings = self.new
      cbs_rankings.name = doc.search("div.player-wrapper").text
      @@rankings
      i += 1
    end
  end
end