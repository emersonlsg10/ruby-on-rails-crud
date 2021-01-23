class BuildsController < ApplicationController
  def index
    @builds = Build.all
  end

  def show
    @build = Build.find(params[:id])
  end

  def new
    @build = Build.new
  end

  def create
    @build = Build.new(build_params)

    if @build.save
      redirect_to @build
    else
      render :new
    end
  end

  private
  def build_params
    params.require(:build).permit(:name, :id_build, :is_like)
  end
end
