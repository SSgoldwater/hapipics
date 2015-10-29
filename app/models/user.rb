class User < OpenStruct

  def self.service
    @service ||= TwitterService.new
  end

  def self.find(id, token)
    User.new(service.user(id, token))
  end

end
