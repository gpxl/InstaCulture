class Media

  def self.recent(venues,max_ids=[])
    media = venues.zip(max_ids).map{|v| Instagram.location_recent_media(v[0],:max_id => v[1]) }.flatten(1)
  end

  def self.image(image_id)
    media = Instagram.media_item(image_id)
  end

end

