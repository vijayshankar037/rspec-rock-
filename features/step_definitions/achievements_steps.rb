
require "#{Rails.root}/spec/factories/achievements"

Given('I am a guest user') do
end

Given('there is a public achievement') do
  @achivement = FactoryBot.create(:achievement, title: 'I did it')
end

When('I go to the achivement\'s page') do
  visit(achievement_path(@achivement.id))
end

Then('I must see achivement\'s content') do
  expect(page).to have_content('I did it')
end
