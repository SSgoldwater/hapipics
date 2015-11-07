require 'rails_helper'

RSpec.describe HapiTagFeed, type: :model do

#this test will pass if you delete its cassette from spec/cassettes

  xit "finds a feed based on hapi tag" do
    VCR.use_cassette("hapitagfeed#find") do
      @feed = HapiTagFeed.find(ENV['token'])

      expect(@feed).to be_an(Array)
    end
  end

end
