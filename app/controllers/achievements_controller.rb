class AchievementsController < ApplicationController
  def new
    @achivement = Achievement.new
  end

  def create
    @achivement = Achievement.new(achievement_params)
    if @achivement.save
      redirect_to root_url, notice: 'Achievement has been created'
    else
      render 'new'
    end
  end

  def show
    @achivement = Achievement.find(params[:id])
  end

  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :privay, :cover_image, :featured)
  end
end
