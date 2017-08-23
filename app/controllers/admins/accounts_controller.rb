module Admins

  class AccountsController < AdminsController

    def edit
    end

    def update_info
      if current_admin.update(admin_info_params)
        # successfully saved info message
      else
        # display error message
      end
      redirect_to admins_account_path
    end

    def change_password
      admin = current_admin
      if admin.valid_password?(admin_password_params[:current_password])
        if admin.change_password(admin_password_params)
          sign_in(admin, bypass: true)
          # successfully changed password message
        else
          # display error message
        end
      else
        # current password was incorrect message
      end
      redirect_to admins_account_path
    end

    private

    def admin_info_params
      params.require(:admin).permit(:name, :email)
    end

    def admin_password_params
      params.require(:admin).permit(:current_password, :new_password, :new_password_confirmation)
    end

  end
end
