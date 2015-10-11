require_dependency "admin/application_controller"

module Admin
  class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :edit, :update, :destroy]
    before_action :set_nav

    def report
    end

    # GET /clients
    def index
      @clients = Admin::Client.all
    end

    # GET /clients/1
    def show
    end

    # GET /clients/new
    def new
      @client = Admin::Client.new
    end

    # GET /clients/1/edit
    def edit
    end

    # POST /clients
    def create
      @client = Admin::Client.new(client_params)

      if @client.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render :new
      end
    end

    # PATCH/PUT /clients/1
    def update
      if params[:client][:password].blank? && params[:client][:password_confirmation].blank?
          params[:client].delete(:password)
          params[:client].delete(:password_confirmation)
      end

      if @client.update(client_update_params)
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render :edit
      end
    end

    # DELETE /clients/1
    def destroy
      @client.destroy
      redirect_to clients_url, notice: 'Client was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_client
        @client = Client.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def client_params
        params.require(:client).permit(:type_client, :cpf, :cnpj, :logo_path, :social_reason, :fantasy_name, :logo_path,
                                       :username, :password, :password_confirmation, :city, :uf, :cep, :address,
                                       :email, :cadastre_email, :telephone, :celphone, :responsible_telephone, :responsible_name)
      end

      def client_update_params
        params.require(:client).permit(:type_client, :cpf, :cnpj, :logo_path, :social_reason, :fantasy_name, :logo_path,
                                       :username, :city, :uf, :cep, :address,
                                       :email, :cadastre_email, :telephone, :celphone, :responsible_telephone, :responsible_name)
      end

      def set_nav
        @nav = "client"
      end

  end
end
