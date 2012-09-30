class GramsController < ApplicationController
  def index
    @venues = Media.recent
  end
end
