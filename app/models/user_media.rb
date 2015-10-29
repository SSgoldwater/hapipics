class UserMedia < OpenStruct

  def self.service
    @service ||= TwitterService.new
  end

  def self.find(id, token)
    UserMedia.new(service.user_media(id, token))
  end

end
