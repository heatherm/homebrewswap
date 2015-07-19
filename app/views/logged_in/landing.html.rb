class Views::LoggedIn::Landing < Views::Base
  needs :my_beers
  needs :beers

  def content
    full_row {
      h1("My Beers")
      link_to "Add a beer", new_beer_path
      my_beers.each do |beer|
        text beer.inspect
      end
    }
    full_row {
      h1("Available Beers")
      beers.each do |beer|
        text beer.inspect
      end
    }
  end
end
