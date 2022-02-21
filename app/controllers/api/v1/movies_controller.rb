module Api
  module V1
    class MoviesController < ApplicationController
      def index
        @movies = Movies.all_movies
        render json: @movies
      end
    end
  end
end
