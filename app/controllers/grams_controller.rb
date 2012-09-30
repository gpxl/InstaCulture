class GramsController < ApplicationController
  def index
    @venues = Media.recent(Venue.new.ids)
  end
end
