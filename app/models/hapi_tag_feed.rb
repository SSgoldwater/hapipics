class HapiTagFeed < OpenStruct
  
  def self.service 
    @service ||= TwitterService.new
  end
  
  def self.find(token)
    HapiTagFeed.new(service.hapi_tag_feed(token))
  end

end
