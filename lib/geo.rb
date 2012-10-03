class Geo

  attr_accessor :ll

  def initialize(location)
    geolocation = Geocoder.search(location)
    @ll = geolocation.first.latitude.to_s + ',' + geolocation.first.longitude.to_s
  end

end
