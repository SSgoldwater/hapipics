require 'rails_helper'

RSpec.describe Post, type: :model do 
  before(:each) do
    VCR.use_cassette("get_posts_from_user_feed") do
      @posts = UserFeed.find('self', ENV['token']).data.map! { |post| Post.new(post) }
      @post = @posts.first
    end
  end

  it "has a poster_pic method that returns poster pic" do
    expect(@post.poster_pic).to eq('https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-xtf1/t51.2885-19/11117073_830991770320109_177291229_a.jpg')
  end
  
  it "has poster_name method that returns poster name" do
    expect(@post.poster_name).to eq('deadmau5')
  end

  it "has an image method that returns the post image" do
    expect(@post.image).to eq('https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/s640x640/sh0.08/e35/12145192_899956370084311_708524410_n.jpg')
  end

  it "has a post_caption method that returns post caption" do
    expect(@post.poster_pic).to eq('https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-xtf1/t51.2885-19/11117073_830991770320109_177291229_a.jpg')
  end
  
  it "has a like_count method that returns like count" do
    expect(@post.like_count).to eq(3752)
  end
  
end
