require_dependency "admin/application_controller"

module Admin
  class BannersController < ApplicationController


    def index
      @banners = Banner.all
    end

    def show
    end

    def create
      @banner = Banner.new(banner_params)
      if @banner.save
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @banner.update(set_params)
        flash[:success] =  t :success
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
    end

    def new
      @banner = Banner.new
    end

    def destroy
      if @banner.destroy
        flash[:success] = t :success
      else
        flash[:danger]  = t :danger
      end

      redirect_to action: 'index'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_attribute
        @banner = Banner.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def attribute_params
        params.require(:banner).permit(:status, :name, :link, :order, :image_path, :location)
      end
  end
end
