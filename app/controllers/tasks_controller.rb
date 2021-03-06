class TasksController < ApplicationController
  layout "dashboard"
  before_action :set_task, only: [:show, :edit, :update, :destroy, :completed]
  before_action :authenticate_user!
  

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.order(:id)
    respond_to :html, :json
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    
    @task.owner_id = current_user.id if user_signed_in?

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Tarefa criada com sucesso.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update

    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Tarefa atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Tarefa removida com sucesso.' }
      format.json { head :no_content }
    end
  end

  # Concluir tarefas
  def completed
    @task.update(status: 1)
    
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Tarefa concluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      tp = params.require(:task).permit(:title, :description, :created_at, :delegated, :status, :owner_id)
      
      # passando apenas attr status de string para integer
      tp[:status] = params[:task][:status].to_i
      
      return tp
    end
end
