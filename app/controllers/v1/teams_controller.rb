class V1::TeamsController < V1::BaseController
  before_action :load_team, only: [:update, :show, :destroy, :edit]

  def index
    @teams = Team.all
    render json: success_message(t("v1.get_list_successfully)", name: Team), @teams)
  end

  def show
    render json: success_message(t("v1.show_successfully", name: Team), @team)
  end

  def create
    team = Team.new team_params
    if team.save
      render json: success_message(t("v1.create_successfully", name: Team), team)
    else
      render json: error_message(t("v1.create_fails", name: Team))
    end
  end

  def edit
  end

  def update
    @team.update_attributes team_params
    render json: success_message(t("v1.update_successfully", name: Team), @team)
  end

  def destroy
    if @team.destroy
      render json: success_message(t("v1.delete_successfully", name: Team))
    else
      render json: error_message(t("v1.delete_fails", name: Team))
    end
  end

  private
  def team_params
    params.permit :name, :manager_id
  end

  def load_team
    @team = Team.find params[:id]
    unless @team
      render json: error_message(t("v1.not_found", name: Team))
    end
  end
end
