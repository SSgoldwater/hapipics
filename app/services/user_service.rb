class UserService
  attr_reader :connection
  def initialize
    @connection = Hurley::Client.new("https://api.instagram.com/v1/")
  end

  def user(id, token)
    parse(connection.get("users/#{id}/?access_token=#{token}"))
  end
  
  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
