class Media
  def self.recent(venues)
    media = venues.map{|v| Instagram.location_recent_media(v).data }.flatten(1)
    media.sort! {|a,b| b.created_time <=> a.created_time}
  end
end

