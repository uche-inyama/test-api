class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: [:update, :destroy]

  def index
    movies = Movie.all_movies

    render json: movies, status: :ok
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie, status: :ok
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy

    head :no_content
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :plot, :purchased, :price, :video_quality)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end


