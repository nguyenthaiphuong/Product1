class V1::ProjectsController < V1::BaseController
  before_action :load_project, only: [:update, :show, :destroy]

  def index
    @project = Project.all
    render json: success_message(t("v1.get_list_successfully", name: Project), @project)
  end

  def show
    render json: success_message(t("v1.show_successfully", name: Project), @project)
  end

  def create
    project = Project.new project_params
    if project.save
      render json: success_message(t("v1.create_successfully", name: Project), project)
    else
      render json: error_message(t("v1.create_fails", name: Project))
    end
  end

  def update
    @project.update_attributes project_params
    render json: success_message(t("v1.update_successfully", name: Project), @project)
  end

  def destroy
    if @project.destroy
      render json: success_message(t("v1.delete_successfully", Project))
    else
      render json: error_message(t("v1.delete_fails", Project))
    end
  end

  private
  def project_params
    params.permit :name, :description
  end

  def load_project
    @project = Project.find params[:id]
    unless @project
      render json: error_message(t("v1.not_found"), Project)
    end
  end
end
