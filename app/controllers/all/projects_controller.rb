module All
  class ProjectsController < ApplicationController

    def index
      @projects = Project.all
    end

    def show
      @project = Project.friendly.find(params[:id])
    end

  end
end
