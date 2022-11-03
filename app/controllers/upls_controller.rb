class UplsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project
  before_action :set_upl, only: [:show, :edit, :update, :destroy]

  # GET projects/1/tasks
  def index
    @upls = @project.upls
  end

  # GET projects/1/tasks/1
  def show
      
  end

  # GET projects/1/tasks/new
  def new
    @upl = @project.upls.build
    @upls = @project.upls
  end

  # GET projects/1/tasks/1/edit
  def edit
  end

  # POST projects/1/tasks
  def create
    @upl = @project.upls.build(upl_params)

    if @upl.save
      redirect_to new_project_upl_path
    else
      render action: 'new'
    end
  end

  # PUT projects/1/tasks/1
  def update
    if @upl.update(upl_params)
      redirect_to new_project_upl_path
    else
      render action: 'edit'
    end
  end

  # DELETE projects/1/tasks/1
  def destroy
      @upl.destroy
          redirect_to new_project_upl_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_upl
      @upl = @project.upls.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def upl_params
      params.require(:upl).permit(:name, :upler)
    end
end
