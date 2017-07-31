class HomeController < ApplicationController
  def index
    @movies = Movie.all
@movies = Movie.paginate(:page => params[:page],:per_page => 2)
  end

  def new
    @tvs = Tv.all
@tvs = Tv.paginate(:page => params[:page],:per_page => 2)
  end

  def search
    @movies = Movie.all
    @tvs = Tv.all
    if params[:category][:type]=="name"
      @tvs = Tv.where("name LIKE ?","%#{params[:search]}%")
      @movies = Movie.where("name LIKE ?","%#{params[:search]}%")
      render 'home/search' and return
       p @tvs.errors.inspect
    elsif params[:category][:type] == "language"
      @tvs = Tv.where("language LIKE ?","%#{params[:search]}%")
      @movies = Movie.where("language LIKE ?","%#{params[:search]}%")    
      render 'home/search' and return
      elsif params[:category][:type] == "cast"
        @tvs = Tv.joins(:casts).where("casts.name LIKE ?","%#{params[:search]}%")
        @movies = Movie.joins(:casts).where("casts.name LIKE ?","%#{params[:search]}%")
        render 'home/search' and return
      else params[:category][:type] == "genre"
        @tvs = Tv.where("genre LIKE ?","%#{params[:search]}")
        @movies = Movie.where("genre LIKE ?","%#{params[:search]}%")
          render 'home/search' and return
    end 
  end

def show
end
end

