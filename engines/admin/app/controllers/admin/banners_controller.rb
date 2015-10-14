require_dependency "admin/application_controller"

module Admin
  class BannersControllers < ApplicationController


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
      
    end

    def new
      @banner = Banner.new
    end

  end
end
