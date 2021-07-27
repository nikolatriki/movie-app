class MoviesController < ApplicationController
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
    @movie = Movie.new(title: '...', description: '....')
    
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end
end
