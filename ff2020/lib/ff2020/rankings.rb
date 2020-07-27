class Ff2020::Rankings
  attr_accessor :url, :rankings

  def self.keep_reading(source)
    puts ""
    puts "Check more rankings?"
    input = gets.strip.downcase
    puts ""
    if input == "yes" || input == "y"
      case source.to_s
      when "cbs"
        Scraper.get_choice("cbs")
      when "nfl"
        Scraper.get_choice("nfl")
      when "espn"
        Scraper.get_choice("espn")
      end
    else
      CLI.new.goodbye
    end
  end

  def self.display_story(source)
    puts <<~DOC
    #{@story.title}
    Story #{@story.author}
    DOC
      @new_stories[0,5].each do |para|
        puts <<~DOC
        #{para}\n
        DOC
      end
    puts <<~DOC
    Read the rest of the story at #{@url}
    DOC
    self.keep_reading(source)
  end

  def self.cbs_rankings(url)
    doc = Nokogiri::HTML(open(url))
    @url = url
    @rankings = self.new
    @rankings.table = doc.search("div.player-wrapper").text    
    end
    self.display_rankings("cbs")
  end
  
  def self.nfl_rankings(url)
    doc = Nokogiri::HTML(open(url))
    @url = url
    @rankings = self.new
    @rankings.table = doc.search("div#yui_3_15_0_1_1595850212788_537").text    
    end
    self.display_rankings("nfl")
  end
  
  def self.espn_rankings(url)
    doc = Nokogiri::HTML(open(url))
    @url = url
    @rankings = self.new
    @rankings.table = doc.search("div.scrollable-table").text    
    end
    self.display_rankings("espn")
  end
end
  