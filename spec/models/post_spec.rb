require 'rails_helper'

RSpec.describe Post, type: :model do 
  before(:each) do
    VCR.use_cassette("get_posts_from_user_feed") do
      @posts = UserFeed.find('self', ENV['token']).data.map! { |post| Post.new(post) }
      @post = @posts.first
    end
  end

  it "has a poster_pic method that returns poster pic" do
    expect(@post.poster_pic).to eq('https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-19/s150x150/11251648_877316879011322_1761317770_a.jpg')
  end
  
  it "has poster_name method that returns poster name" do
    expect(@post.poster_name).to eq('landrover')
  end

  it "has an image method that returns the post image" do
    expect(@post.image).to eq('https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/s640x640/sh0.08/e35/12142078_771999726260532_988980953_n.jpg')
  end

  it "has a post_caption method that returns post caption" do
    expect(@post.poster_pic).to eq('https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-19/s150x150/11251648_877316879011322_1761317770_a.jpg')
  end
  
  it "has a like_count method that returns like count" do
    expect(@post.like_count).to eq(3221)
  end
  
end
