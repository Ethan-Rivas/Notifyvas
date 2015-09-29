class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:squirrel).permit(:squirrel_name, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:squirrel).permit(:squirrel_name, :email, :password, :picture, :password_confirmation, :current_password)
    end

end
