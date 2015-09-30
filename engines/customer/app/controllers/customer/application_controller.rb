module Customer
  class ApplicationController < ActionController::Base
    layout 'customer/application'
    before_action :authenticate_client!
  end
end
