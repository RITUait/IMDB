class TvsController < ApplicationController
def index
@tvs=Tv.all
@tvs = Tv.paginate(:page => params[:page],:per_page => 2)

end

def new
  @tv = Tv.new
end

def create
  @tv = Tv.new(tv_params)
  if @tv.save
    redirect_to tvs_path
  else 
    render :new
  end
end

def edit
  @tv = Tv.find(params[:id])
end

def update
  @tv = Tv.find(params[:id])
  if @tv.update_attributes(tv_params)
    redirect_to tvs_path
  else
    render :new
  end
end

def destroy 
  Tv.find(params[:id])
  redirect_to tvs_path
end

def show
  @tv = Tv.find(params[:id])
  @review= Review.new(resource_id: @tv.id,resource_type: 'Tv') 
  print @tv
end

private
def tv_params
  params.require(:tv).permit(:name, :genre, :language, :description, :release_date,:trailer_URL, movie_casts_attributes: [:cast_id, :_destroy,:id])
end


end
