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
    if self.caption 
      self.caption[:text] 
    else
      ""
    end
  end

  def like_count
    self.likes[:count]
  end

end
