class V1::DeptsController < V1::BaseController
  before_action :load_dept, only: [:update, :show, :destroy]

  def index
    @depts = Dept.all
    render  json: success_message(t("v1.get_list_successfully", name: Dept), @depts)
  end

  def show
    render json: success_message(t("v1.show_successfully", name: Dept), @dept)
  end

  def create
    dept = Dept.new(dept_params)
    if dept.save
      render json: success_message(t("v1.create_successfully", Dept), dept)
    else
      render json: error_message(t("v1.create_fails", name: Dept))
    end
  end

  def update
    @dept.update_attributes dept_params
    render json: success_message(t("v1.update_successfully", name: Dept), @dept)
  end

  def destroy
    if @dept.destroy
      render json: success_message(t("v1.delete_successfully", name: Dept), @dept)
    else
      render json: error_message(t("v1.delete_fails", name: Dept))
    end
  end

  private
  def load_dept
    @dept = Dept.find params[:id]
    unless @dept
      render json: error_message(t("v1.not_found", name: Dept))
    end
  end

  def dept_params
    params.permit :name
  end
end
