class Post < OpenStruct

  def poster_pic
    self.user[:profile_picture]
  end

  def poster_name
    self.user[:username]
  end

  def image
    self.images[:standard_resolution][:url]
  end
  
  def post_caption
    self.caption[:text]
  end

  def like_count
    self.likes[:count]
  end

end
