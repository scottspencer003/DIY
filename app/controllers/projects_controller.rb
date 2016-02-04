class ProjectsController < ApplicationController

def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      redirect_to projects_path
    else
      logger.debug("Project creation failed")
      flash[:alert] = "Project creation failed #{@project.errors.full_messages.join('')}"
      redirect_to new_projects_path
    end
  end

  def index
    @projects = current_user.projects
    @new_project = Project.new
  end

  def show
    @project = Project.find(params[:id])

  end

  def edit
    @project = Project.find(params[:id])
  end 

  def update
    @project = Project.find(params[:id])
      @project.update_attributes(project_params)
     
    redirect_to projects_path
  end 

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to :controller => 'projects', :action => 'index'
    end

   

  private

  def project_params
    params.require(:project).permit(:title, :description, :materials, :attachment_one)
  end
end	