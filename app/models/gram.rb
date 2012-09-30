class Gram
  def get_recent
    @media = Instagram.location_recent_media(132043)
  end
end
