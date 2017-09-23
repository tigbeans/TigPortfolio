module Admins
  class ProjectsController < AdminsController

    def index
        @projects = Project.all
    end

  end
end
