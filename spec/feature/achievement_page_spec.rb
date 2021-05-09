require 'rails_helper'

feature 'achievement page' do
  scenario 'list achievement on page' do
    # achivement = Achievement.create(title: 'Just did it')
    achievement = create :achievement
    visit("/achievements/#{achievement.id}")
    expect(page).to have_content('Just did it')
  end
end
