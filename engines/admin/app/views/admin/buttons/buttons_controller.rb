require_dependency 'admin/application_controller'
module Admin
  class ButtonsController < ApplicationController

    def index
      @buttons = Button.all
    end

    def new

    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_params
    end

    def set_button
    end
  end
end