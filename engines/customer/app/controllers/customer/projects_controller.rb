require_dependency "customer/application_controller"

module Customer
  class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]
    before_action :set_nav
    # GET /projects
 
    def index
      @projects = current_client.projects
    end

    # GET /projects/1
    def show
    end

    # GET /projects/new
    def new
      @project = current_client.projects.new
    end

    # GET /projects/1/edit
    def edit
    end

    # POST /projects
    def create
      @project = current_client.projects.new(project_params)

      if @project.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render :new
      end
    end

    # PATCH/PUT /projects/1
    def update
      if @project.update(project_params)
        flash[:success] = t :success
        redirect_to action: 'index'
       else
        render :edit
      end
    end

    # DELETE /projects/1
    def destroy
      if @project.destroy
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end
        redirect_to action: 'index'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_project
        @project = current_client.projects.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def project_params
        params.require(:project).permit(:name, :description, :status, :image_path)
      end

      def set_nav; @nav = 'property'; end;
  end
end
