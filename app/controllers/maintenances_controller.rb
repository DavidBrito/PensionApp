class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :edit, :update, :destroy, :completed]
  before_action :authenticate_user!
  layout "dashboard"
  # GET /maintenances
  # GET /maintenances.json
  def index
    #@maintenances = Maintenance.where(property_id: view_context.find_property_by_user(current_user))
     @maintenances = Maintenance.order(:status)
  end

  # GET /maintenances/1
  # GET /maintenances/1.json
  def show
  end

  # GET /maintenances/new
  def new
    @maintenance = Maintenance.new
  end

  # GET /maintenances/1/edit
  def edit
  end

  # POST /maintenances
  # POST /maintenances.json
  def create
    @maintenance = Maintenance.new(maintenance_params)
    
    @maintenance.owner_id = current_user.id if user_signed_in?

    respond_to do |format|
      if @maintenance.save
        format.html { redirect_to @maintenance, notice: 'Chamada de manutenção foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @maintenance }
      else
        format.html { render :new }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenances/1
  # PATCH/PUT /maintenances/1.json
  def update
     
    if ((not maintenance_params[:response].blank?) && (current_user.user_type = 'proprietary') && @maintenance.status != 'closed')
      @maintenance.status = 1
    end
    
    respond_to do |format|
      if @maintenance.update(maintenance_params)
        format.html { redirect_to @maintenance, notice: 'Chamada de manutenção foi alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @maintenance }
      else
        format.html { render :edit }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenances/1
  # DELETE /maintenances/1.json
  def destroy
    @maintenance.destroy
    respond_to do |format|
      format.html { redirect_to maintenances_url, notice: 'Chamada de manutenção foi deletada com sucesso.' }
      format.json { head :no_content }
    end
  end
  
  # Concluir tarefas
  def completed
    @maintenance.update(status: 2)

    respond_to do |format|
      format.html { redirect_to maintenance_url, notice: 'Chamada de manutenção foi concluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions. 
    def set_maintenance
      @maintenance = Maintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintenance_params
      params.require(:maintenance).permit(:user_id, :title, :description, :status, :response)
    end
end
