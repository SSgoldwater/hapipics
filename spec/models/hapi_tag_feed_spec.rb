require 'rails_helper'

RSpec.describe HapiTagFeed, type: :model do

  it "finds a feed based on hapi tag" do
    VCR.use_cassette("hapitagfeed#find") do
      @feed = HapiTagFeed.find(ENV['token'])

      expect(@feed[:data]).to be_an(Array)
    end
  end

end
