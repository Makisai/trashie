class MoviesController < ApplicationController
  before_action :set_movie, only: [ :show, :edit, :update ]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_movie
     @movie = Movie.find(params[:id])
   end

   def movie_params
      params.expect(movie: [ :name, :description, :featured_image ])
    end
end
