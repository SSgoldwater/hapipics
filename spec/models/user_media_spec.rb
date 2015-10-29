require 'rails_helper'

RSpec.describe UserMedia, type: :model do

  it "finds user media by self" do
    VCR.use_cassette("usermedia#find") do
      @feed = UserMedia.find('self', ENV['token'])

      expect(@feed[:data]).to be_an(Array)
    end
  end

end
