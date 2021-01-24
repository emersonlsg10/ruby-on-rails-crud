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

  def edit
    @build = Build.find(params[:id])
  end

  def update
    @build = Build.find(params[:id])

    if @build.update(build_params)
      redirect_to @build
    else
      render :edit
    end
  end

  def destroy
    @build = Build.find(params[:id])
    @build.destroy

    redirect_to root_path
  end

  private
  def build_params
    params.require(:build).permit(:name, :id_build, :is_like)
  end
end
