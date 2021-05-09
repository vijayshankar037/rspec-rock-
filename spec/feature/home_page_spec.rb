require 'rails_helper'

feature 'home page' do
  scenario 'welcome' do
    visit('/')
    expect(page).to have_content('Welcome')
  end
end
