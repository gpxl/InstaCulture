class GramsController < ApplicationController
  def index
    max_ids = params[:max_ids] || []
    @venue = Venue.new

    @venues = Media.recent(@venue.ids, max_ids)
    @images =  @venues.map{ |v| v.data }.flatten
    @images.sort!{|a,b| b.created_time <=> a.created_time }
    @next_max_ids =  @venues.map{ |v| v.pagination.next_max_id || 0 }


    respond_to do |format|
      format.html do
        if request.headers['X-Requested-With'] == 'XMLHttpRequest'
          render :layout => false
        end
      end
      format.json { render json: @venues.to_json }
    end
  end

  def show
    @image = Media.image(params[:id])
    render :layout => false
  end
end
