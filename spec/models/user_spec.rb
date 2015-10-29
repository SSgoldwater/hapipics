require 'rails_helper'

RSpec.describe User, type: :model do 
  before(:each) do
    VCR.use_cassette("user#find") do
      @user = User.find('self', ENV['token'])
    end
  end
  
  it "finds a user by self and returns username" do
      expect(@user.username).to eq('3y35')
  end

  it "has a full_name method that returns full_name" do
      expect(@user.full_name).to eq('Stanley')
  end

  it "has a profile_picture method that returns profile_picture" do
      expect(@user.profile_picture).to eq('https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-19/11327002_1624156241194586_624777089_a.jpg')
  end

  it "has a bio method that returns bio" do
    expect(@user.bio).to eq("I take pictures with my cameraphone and sometimes real cameras.\nGraduated from a semester of photography class in highschool.")
  end

  it "has a posts method that returns posts count" do
    expect(@user.posts).to eq(44)
  end

  it "has a followers method that returns followers count" do
    expect(@user.followers).to eq(64)
  end

  it "has a following method that returns following count" do
    expect(@user.following).to eq(48)
  end
end
