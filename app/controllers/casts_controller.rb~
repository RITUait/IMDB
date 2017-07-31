class CastsController < ApplicationController
# before_action :authenticate_user!  
def index
  @casts = Cast.all
end

def new
  @cast = Cast.new
end

def create
  @cast = Cast.new(cast_params)
  if @cast.save
    redirect_to casts_path
  else
    render :new
  end
end

def edit
  @cast = Cast.find(params[:id])
end

def update
  @cast = Cast.find(params[:id])
  if @cast.update_attributes(cast_params)
    redirect_to casts_path
  else
    render :new
  end
end

def destroy
  Cast.find(params[:id]).destroy
  redirect_to casts_path
end

  def show
  @cast = Cast.find(params[:id])
end

private
def cast_params
  params.require(:cast).permit(:name, :DOB, :gender, :age,:description, :photos_URL,images_attributes: [:image,:_destroy,:id])
end
end
