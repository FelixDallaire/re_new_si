class InterventionController < ApplicationController
    before_action :authenticate_user!, :require_admin

    def require_admin
        redirect_to main_app.root_path unless current_user.is_employee(current_user.email)
    end

    @customer = Customer.all

    def addresses
        # To test the requets: http://localhost:3000/intervention/addresses.json?customer_id=4
        @building_id_list = []
        Building.where(customer_id: params[:customer_id]).each do |i|
            build_id = i.address_id
            @building_id_list.push(i)
        end
        
        if params[:customer_id].present?
            @addresses = Address.where(id: @building_id_list)
        else
            @address = Address.all
        end
        # if request.xhr?
        respond_to do |format|
            format.json {
                render json: {address: @addresses}
            }
        end
        # end
    end

    def batteries
        # To test the requets: http://localhost:3000/intervention/batteries.json?building_address=4
        if params[:building_address].present?
            @batteries = Battery.where(building_id: params[:building_address])
        else
            @batteries = Battery.all
        end
        # if request.xhr?
            respond_to do |format|
                format.json {
                    render json: {battery: @batteries}
                }
            end
        # end
    end

    def columns
        # To test the requets: http://localhost:3000/intervention/columns.json?building_address=2
        if params[:battery_id].present?
            @columns = Column.where(battery_id: params[:battery_id])
        else
            @columns = Column.all
        end
        # if request.xhr?
            respond_to do |format|
                format.json {
                    render json: {column: @columns}
                }
            end
        # end
    end

    def elevators
        # To test the requets: http://localhost:3000/intervention/elevators.json?building_address=4
        if params[:column_id].present?
            @elevators = Elevator.where(column_id: params[:column_id])
        else
            @elevators = Elevator.all
        end
        # if request.xhr?
            respond_to do |format|
                format.json {
                    render json: {elevator: @elevators}
                }
            end
        # end
    end



end
