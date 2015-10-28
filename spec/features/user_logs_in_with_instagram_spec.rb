require 'rails_helper'

feature 'login' do
  xscenario 'user logs in with instagram' do
    visit root_path
    stub_omniauth
    click_link_or_button('Login with Instagram')
    
    expect(page).to have_content("3y35")
  end
end
    

def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:instagram] = OmniAuth::AuthHash.new({
    provider: "instagram",
    uid: "234515",
    info: {
      name: "stanley",
      username: "3y35",
    }, 
    credentials: {
      token: "694953e0061a4cc7b93887541f6af5b9",
      secret: "0b23dc57822f49ad96944b0a677bdc5a",
    }
  })
end
