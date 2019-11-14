class TaskOrganizersController < ApplicationController
  before_action :set_task_organizer, only: [:show, :edit, :update, :destroy]

  # GET /task_organizers
  # GET /task_organizers.json
  def index
    @task_organizers = TaskOrganizer.all
  end

  # GET /task_organizers/1
  # GET /task_organizers/1.json
  def show
  end

  # GET /task_organizers/new
  def new
    @task_organizer = TaskOrganizer.new
    @task = Task.all
    @organizer = Organizer.all
    @isStatusDisabled = false
  end

  # GET /task_organizers/1/edit
  def edit
    @isStatusDisabled = true
  end

  # POST /task_organizers
  # POST /task_organizers.json
  def create
    @task_organizer = TaskOrganizer.new(task_organizer_params)
    @task_organizer.status = false
    respond_to do |format|
      if @task_organizer.save
        format.html { redirect_to @task_organizer, notice: 'Task organizer was successfully created.' }
        format.json { render :show, status: :created, location: @task_organizer }
      else
        format.html { render :new }
        format.json { render json: @task_organizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_organizers/1
  # PATCH/PUT /task_organizers/1.json
  def update
    respond_to do |format|
      if @task_organizer.update(task_organizer_params)
        format.html { redirect_to @task_organizer, notice: 'Task organizer was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_organizer }
      else
        format.html { render :edit }
        format.json { render json: @task_organizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_organizers/1
  # DELETE /task_organizers/1.json
  def destroy
    @task_organizer.destroy
    respond_to do |format|
      format.html { redirect_to task_organizers_url, notice: 'Task organizer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_organizer
      @task_organizer = TaskOrganizer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_organizer_params
      params.require(:task_organizer).permit(:status, :task_id, :organizer_id)
    end
end
