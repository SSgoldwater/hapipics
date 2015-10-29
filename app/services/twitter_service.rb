class TwitterService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("https://api.instagram.com/v1/")
  end

  def user(id, token)
    parse(connection.get("users/#{id}/?access_token=#{token}"))
  end

  def user_feed(id, token)
    parse(connection.get("users/#{id}/feed?access_token=#{token}"))
  end
  
  def user_media(id, token)
    parse(connection.get("users/#{id}/media/recent/?access_token=#{token}"))
  end

  def hapi_tag_feed(tag, token)
    parse(connection.get("tags/#{tag}/media/recent?access_token=#{token}"))
  end
  
  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
