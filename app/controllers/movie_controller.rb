class MovieController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movie_path, status: :see_other
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director, :actors, :summary)
  end
end
