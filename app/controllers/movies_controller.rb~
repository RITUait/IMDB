class MoviesController < ApplicationController
  def index
    @movies = Movie.all
@movies = Movie.paginate(:page => params[:page],:per_page => 2)
end

  def new 
    @movie = Movie.new
end
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
  end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to movies_path
  end
 
  def show
    @movie = Movie.find(params[:id])
  @review= Review.new(resource_id: @movie.id,resource_type: 'Movie') 
    print @movie
  end

  private

def movie_params
  params.require(:movie).permit(:name,:genre,:language,:description,:release_date,:trailer_URL, movie_casts_attributes: [:cast_id, :_destroy, :id])
end
end 
