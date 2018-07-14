# require 'HTTParty'
require 'pp'

class MoviesController < ApplicationController

def index
    # @movies = movie.generate
    # @movies = current_user.movies.map do |movie|
    #     url = "http://www.omdbapi.com/?i=#{movie.omdb_id}&apikey=f3d1e28d"
    #     response = HTTParty.get(url)
    #     response_body = JSON.parse(response.body)
  
    #     movie.title = response_body['Title']
    #     movie.genre = response_body ['Genre']
    #     movie.release_year = response_body['Year']
    #     movie.synopsis = response_body['Synopsis']
    #     movie.picture = response_body ['Picture']
    #     movie.favorite = release_year['favorite']
      end

      def new
        @movie = Movie.new
      end

      def create
        @movie = Movie.new(movie_params)
      end

      private
      def movie_params
        params.require(:movie).permit(:title,:genre, :year, )
      end

    end


