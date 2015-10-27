require 'rails_helper'

feature 'splashpage' do
  scenario 'user sees splashpage' do
    visit root_path

    expect(page).to have_text('Hapipics')
  end
end
