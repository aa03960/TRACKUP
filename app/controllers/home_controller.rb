class HomeController < ApplicationController

def index
end

  def favourites
  	@tracks = Track.all
  end

  def contact
  end

end