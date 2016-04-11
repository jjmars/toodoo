class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy]
  # before_action :set_owner
  
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = @owner.tasks.order(created_at: :desc)
    @todo = @tasks.reject { |task| task.status != 0 }
    @doin = @tasks.reject { |task| task.status != 1 }
    @done = @tasks.reject { |task| task.status != 2 }
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @task.owner = @owner # definido em application_controller.rb

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_url }
        format.js   { }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.any(:js, :json) { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to tasks_url }
        format.js   { }
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
      format.html { redirect_to tasks_url }
      format.js   { }
      format.json { head :no_content }
    end
  end

  private
    
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :status, :deadline)
    end
  
    # def set_owner
    #   logger.debug 'SET_OWNER'
    #   if session['owner_id'].blank?
    #     logger.debug 'BLANK'
    #     @owner = Guest.create()
    #     session['owner_id']   = @owner.id
    #     session['owner_type'] = @owner.class
    #   else
    #     logger.debug 'NOT BLANK'
    #     @owner = Guest.find(session['owner_id']) # quando houver outros tipos de owner, será preciso usar switch no owner_type
    #   end
    # end
    
end
