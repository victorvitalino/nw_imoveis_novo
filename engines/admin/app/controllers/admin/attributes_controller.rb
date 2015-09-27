require_dependency "admin/application_controller"

module Admin
  class AttributesController < ApplicationController
    before_action :set_attribute, only: [:show, :edit, :update, :destroy]

    # GET /attributes
    def index
      @attributes = Attribute.all
    end

    # GET /attributes/1
    def show
    end

    # GET /attributes/new
    def new
      @attribute = Attribute.new
    end

    # GET /attributes/1/edit
    def edit
    end

    # POST /attributes
    def create
      @attribute = Attribute.new(attribute_params)

      if @attribute.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render :new
      end
    end

    # PATCH/PUT /attributes/1
    def update
      if @attribute.update(attribute_params)
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render :edit
      end
    end

    # DELETE /attributes/1
    def destroy
      if @attribute.destroy
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        flash[:danger]  = t :danger
        redirect_to action: 'index'
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_attribute
        @attribute = Attribute.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def attribute_params
        params.require(:attribute).permit(:name, :status)
      end
  end
end
