require 'rails_helper'
require 'factories/achievements'

feature 'achievement page' do
  scenario 'list achievement on page' do
    achievement = create( :achievement, title: 'Just did it')
    visit("/achievements/#{achievement.id}")
    expect(page).to have_content('Just did it')
  end

  scenario ' rander markdown description' do
    achievement = create(:achievement, description: 'That *was* hard')
    visit("/achievements/#{achievement.id}")
    expect(page).to have_css('em', text: 'was')
  end
end
