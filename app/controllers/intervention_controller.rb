class InterventionController < ApplicationController
    # before_action :authenticate_user!, :require_admin

    # def require_admin
    #     redirect_to main_app.root_path unless current_user.is_employee(current_user.email)
    # end


    def index
        @customer = Customer.all
    end
        
end
