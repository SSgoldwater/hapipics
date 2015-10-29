require 'rails_helper'

RSpec.describe UserFeed, type: :model do

  it "finds a userfeed by self" do
    VCR.use_cassette("userfeed#find") do
      @feed = UserFeed.find('self', ENV['token'])
    end
  end

end
