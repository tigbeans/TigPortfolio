module Admins
  class ProjectsController < AdminsController
    before_action :set_project, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

    def index
        @projects = Project.all
    end

    def show
    end

    def new
      @project = current_admin.projects.new
    end

    def edit
    end

    def publish
      @project.publish
      redirect_to admins_projects_url
    end

    def unpublish
      @post.unpublish
      redirect_to admins_projects_url
    end

    def create
      @projects = current_admin.projects.new(project)

      respond_to do |format|
        if @project.save
          format.html { redirect_to admins_projects_path(@project),
            notice: 'Project was sucessfully create.' }
          format.json { render :show, status: :created, location: @project }
        else
          format.html { render :new }
          format.json { render json: @project.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @project.update(project_params)
          format.html { redirect_to admins_projects_path(@project),
            notice: 'Project was successfully updated.' }
          format.json { render :show, status: :ok, location @project }
        else
          format.html { render :edit }
          format.json { render json: @project.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @project.destroy
      respond_to do |format|
        format.html { redirect_to admins_projects_path,
          notice: 'Project was successfully destroyed' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = current_admin.projects.friendly.find(params[:id])
    end

    # Never trust parameters from the outside world, only allow the white list through
    def project_params
      params.require(:post).permit(:title, :percent_complete,
        :content, :card_image_url, :start_date, :projected_end_date)
    end

  end
end
