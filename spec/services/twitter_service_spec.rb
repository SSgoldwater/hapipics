require 'rails_helper'

RSpec.describe "twitter service" do
  before(:each) do
    @service ||= TwitterService.new
  end
  
  it "gives a user by id" do
    VCR.use_cassette("twitterservice#user") do
      user = @service.user('self', ENV['token'])

      expect(user[:data][:username]).to eq('3y35')
    end
  end

  it "gives a users feed" do
    VCR.use_cassette("twitterservice#user_feed") do
      user_feed = @service.user_feed('self', ENV['token'])
      
      expect(user_feed[:data]).to be_an(Array)
    end
  end   
end
