class UserFeed < OpenStruct
  
  def self.service 
    @service ||= TwitterService.new
  end
  
  def self.find(id, token)
    UserFeed.new(service.user_feed(id, token)).data.map! { |post| Post.new(post) }
  end

end
