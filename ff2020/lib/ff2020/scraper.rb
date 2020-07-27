class Ff2020::Scraper

rankings = []

  def self.scrape_espn
    main_url = "http://espn.go.com"
    doc = Nokogiri::HTML(open("https://www.espn.com/fantasy/football/story/_/page/DraftRanks20QBPPR2/updated-2020-fantasy-football-draft-rankings"))

    i = 0
    while i < 6
      espn_rankings = self.new
      espn_rankings.table = doc.search("div.scrollable-table")[i].text
      espn_rankings.url = main_url +  doc.search("div.scrollable-table")[i].attributes["href"].value
      @rankings << espn_headline
      i += 1
    end
  end
  
  def self.scrape_cbs
    main_url = "http://cbssports.com"
    doc = Nokogiri::HTML(open("https://www.cbssports.com/fantasy/football/rankings/ppr/QB/"))

    i = 0
    while i < 6
      cbs_rankings = self.new
      cbs_rankings.table = doc.search("div.player-wrapper")[i].text
      cbs_rankings.url = main_url +  doc.search("div.player-wrapper")[i].attributes["href"].value
      @rankings << cbs_rankings
      i += 1
    end
  end
  
  def self.scrape_nfl
    main_url = "http://nfl.com"
    doc = Nokogiri::HTML(open("https://fantasy.nfl.com/research"))

    i = 0
    while i < 6
      nfl_rankings = self.new
      nfl_rankings.table = doc.search("div#yui_3_15_0_1_1595850212788_537")[i].text
      nfl_rankings.url = main_url +  doc.search("div#yui_3_15_0_1_1595850212788_537")[i].attributes["href"].value
      @rankings << nfl_rankings
      i += 1
    end
  end
end