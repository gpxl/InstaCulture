class SearchController < ApplicationController
  def create
    @results = Search.new(params[:term,],params[:location])
    render :layout => false
  end
end

