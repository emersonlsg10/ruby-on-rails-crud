class BuildsController < ApplicationController
  def index
    @builds = Build.all
  end
end
