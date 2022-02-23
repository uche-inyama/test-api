module Api
  module V1
    class MoviesController < ApplicationController

      before_action :set_movie, only: [:update, :destroy]

      def index
        movies = Movies.all_movies

        render json: Movies, status: :ok
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
        params.permit(:title, :plot, :purchased, :price, :video_quality)
      end

      def set_movie
        @movie = Movie.find(params[:id])
      end
    end
  end
end

