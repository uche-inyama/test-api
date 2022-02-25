class Api::V1::SeasonsController < ApplicationController
  before_action :set_season, only: [:update, :destroy]

  def index
    seasons_episodes = Season.season_episodes

    render json: seasons_episodes, status: :ok
  end

  def create
    @season = Season.create(season_params)
    if @season.save
      render json: @season, status: :created
    else
      render json: @season, status: :unprocessable_entity
    end
  end

  def update
    if @season.update(season_params)
      render json: @season, status: :ok
    else
      render json: @season, status: :unprocessable_entity
    end
  end

  def movies_seasons
    render json: Season.index_json
  end

  def destroy
    @season.destroy

    head :no_content
  end

  private

  def season_params
    params.require(:season).permit(:title, :plot, :number, :price, :video_quality)
  end
  
  def set_season
    @season = Season.find(params[:id])
  end
end

