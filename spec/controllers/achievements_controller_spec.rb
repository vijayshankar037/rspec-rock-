require 'rails_helper'
require 'factories/achievements'

describe AchievementsController do
  describe 'GET new' do
    it 'render :new templates' do
      get :new
      expect(response).to render_template(:new)
      expect(response).to have_http_status(200)
      expect(response).to have_http_status(:ok)
      expect(response).not_to have_http_status(:forbidden)
      expect(response.body).not_to include('Widget was successfully created.')
      expect(response.body).to be_empty
    end

    it 'assigns new Achievement to @achievement' do
      get :new
      expect(assigns(:achivement)).to be_a_new(Achievement)
      expect(assigns(:achivement).new_record?).to be_truthy
    end
  end

  describe 'GET show' do
    let(:achievement) { create(:achievement, title: 'Just did it') }
    it 'renders :show template' do
      # get :achievements, id: achievement
      # expect(response).to render_template(:show)
    end

    it 'assign requested achievement to @achivement' do
      #get :Show, id: achievement
    end
  end
end
