class Api::V1::EpisodesController < ApplicationController
  before_action :set_season, only: [:index, :create]
  before_action :set_episode, only: [:update, :destroy]

  def index
    episodes = @season.episodes

    render json: episodes, status: :ok
  end
  
  def create
    @episode = @season.episodes.build(episode_params)
    if @episode.save
      render json: @episode, status: :created
    else
      render json: @episode.errors, status: :unprocessable_entity
    end
  end

  def update
    if @episode.update(episode_params)
      render json: @episode, status: :ok
    else
      render json: @episode.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @episode.destroy

    head :no_content
  end

  private

  def episode_params
    params.require(:episode).permit(:title, :plot, :episode_number, :season_id)
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def set_season
    @season = Season.find(params[:season_id])
  end
end
