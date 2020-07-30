class Ff2020::CLI
  
  def call
    puts ""
    puts "----------------------------------------------------------"
    puts "    Welcome to the 2020 NFL Fantasy Football Rankings!!"
    puts "    ---------------------------------------------------"
    puts "  View rankings for Quarterbacks from the following sites:"
    puts "----------------------------------------------------------"
    puts ""
    list_options
    menu
  end

  def list_options
    puts <<~DOC
      1. ESPN.com
      2. NFL.com
      3. CBSSports.com
    DOC
  end

  def menu
    puts "Enter the number for the site you want to see rankings from.  You can type list to display sites or exit to cancel."
    input = gets.strip
    puts ""
    if input == "1"
      Ff2020::Scraper.scrape_espn
    elsif input == "2"
      Ff2020::Scraper.scrape_nfl
    elsif input == "3"
      Ff2020::Scraper.scrape_cbs
    elsif input == "list"
      list_options
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