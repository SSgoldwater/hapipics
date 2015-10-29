class HapiTagFeed < OpenStruct
  
  def self.service 
    @service ||= TwitterService.new
  end
  
  def self.find(token)
    tag = ["sunrise", "sunset", "cats", "kittens", "foodporn", "beautiful", "happy", "earthporn", "love"].sample
    HapiTagFeed.new(service.hapi_tag_feed(tag, token))
  end

end
