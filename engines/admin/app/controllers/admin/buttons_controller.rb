require_dependency 'admin/application_controller'
module Admin
  class ButtonsController < ApplicationController
    before_action :set_button, only: [:edit, :update, :destroy]
    before_action :set_nav

    def index
      @buttons = Button.all.order([:code, :order])
    end

    def new
      @button = Button.new
    end

    def create
      @button = Button.new(set_params)

      if @button.save
        flash[:success] =  t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end
    end

    def edit
    end

    def update
      if @button.update(set_params)
        flash[:success] =  t :success
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
    end

    def destroy
      if @button.destroy
        flash[:success] = t :success
      else
        flash[:danger]  = t :danger
      end

      redirect_to action: 'index'
    end

    private

    def set_params
      params.require(:button).permit(:title, :code, :image_path, :order, :status, :link)
    end

    def set_button
      @button = Button.find(params[:id])
    end

    def set_nav
      @nav = "ads"
    end

  end
end