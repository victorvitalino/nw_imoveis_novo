class UserRegistrationsController < Devise::RegistrationsController
  layout 'admin/application'

  def after_update_path_for(resource)
    admin.root_path
  end
end