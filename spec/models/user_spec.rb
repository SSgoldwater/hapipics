require 'rails_helper'

RSpec.describe User, type: :model do 
  before(:each) do
    @service ||= TwitterService.new
  end
  
  it "finds a user by id" do
    VCR.use_cassette("user#find") do
      user = User.find('self', ENV['token'])

      expect(user.username).to eq('3y35')
    end
  end
end
