class Search
  attr_accessor :coordinates, :locations, :venues, :media

  def initialize(q_term,q_location)
    @q_term = q_term
    @q_location = q_location

    @coordinates = Geo.new(@q_location).ll
    @locations = Foursquare.search_venues(:ll => @coordinates, :query => @q_term).groups.first.items
    @venues = @locations.map{ |l| Instagram.location_search(0, 0, { :foursquare_v2_id => l.id }) }
    @media = @venues.first.map{ |v| Instagram.location_recent_media(v.id) }
  end
end
