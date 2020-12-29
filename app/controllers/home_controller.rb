class HomeController < ApplicationController



  def favourites
  	@tracks = Track.all
  end

  def contact
  end
end
