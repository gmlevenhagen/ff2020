class Ff2020::CLI
  
  def call
    puts ""
    puts "---------------------------------------------------"
    puts "Welcome to the 2020 NFL Fantasy Football Rankings!!"
    puts "---------------------------------------------------"
    puts "View rankings for Quarterbacks from the following sites:"
    puts "---------------------------------------------------"
    puts ""
    list_rankings
    menu
  end

  def list_rankings
    puts <<~DOC
      1. CBSSports.com
      2. NFL.com
      3. ESPN.com
    DOC
  end

  def menu
    puts "Enter the number for the site you want to see rankings from.You can type list to display sites or exit to cancel."
    input = gets.strip.downcase
    puts ""
    if input == "1"
      Scraper.get_rankings("cbs")
    elsif input == "2"
      Scraper.get_rankings("nfl")
    elsif input == "3"
      Scraper.get_rankings("espn")
    elsif input == "list"
      list_rankings
    elsif input == "exit"
      goodbye
    else
      puts "Invalid entry. Please type 1 - 3 or exit."
      menu
    end
  end

  def goodbye
    puts "Thanks for stopping by! Rankings are updated weekly! See you next time!"
  end
end