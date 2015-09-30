require_dependency 'admin/application_controller'

module Admin
  class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :destroy]
    before_action :set_nav

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(set_params)

      if @user.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end
    end


    def update
      if @user.update(set_params_update)
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
    end

    def destroy
      if @user.destroy
        flash[:success] = t :success
      else
        flash[:danger]  = t :danger
      end

      redirect_to action: 'index'
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def set_params
      params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end

    def set_params_update
      params.require(:user).permit(:email, :username)
    end


    def set_nav
      @nav = "user"
    end


  end
end