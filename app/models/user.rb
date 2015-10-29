class User < OpenStruct

  def self.service
    @service ||= TwitterService.new
  end

  def self.find(id, token)
    User.new(service.user(id, token))
  end
  
  def username
    self.data[:username]
  end
  
  def full_name
    self.data[:full_name]
  end

  def profile_picture
    self.data[:profile_picture]
  end

  def bio
    self.data[:bio]
  end

  def posts
    self.data[:counts][:media]
  end

  def followers
    self.data[:counts][:follows]
  end

  def following
    self.data[:counts][:followed_by]
  end

end
