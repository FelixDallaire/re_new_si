require 'faker'
class InterventionController < ApplicationController
    before_action :authenticate_user!, :require_admin

    def interventions
    end

    def require_admin
        redirect_to main_app.root_path unless current_user.is_employee(current_user.email)
    end


    @customer = Customer.all


    def addresses
        # To test the requets: http://localhost:3000/intervention/addresses.json?customer_id=4
        @building_id_list = []
        Building.where(customer_id: params[:customer_id]).each do |i|
            build_id = i.address_id
            @building_id_list.push(build_id)
        end
        @business_name = Customer.find(params[:customer_id]).business_name
        
        if params[:customer_id].present?
            @addresses = Address.where(id: @building_id_list)
        else
            @address = Address.all
        end
        respond_to do |format|
            format.json {
                render json: {address: @addresses}
            }
        end
    end

    def batteries
        # To test the requets: http://localhost:3000/intervention/batteries.json?building_address=4
        if params[:building_address].present?
            id = Building.where(address_id:  params[:building_address])
            @batteries = Battery.where(building_id: id.first.id)
        else
            @batteries = Battery.all
        end
            respond_to do |format|
                format.json {
                    render json: {battery: @batteries}
                }
            end
    end

    def columns
        # To test the requets: http://localhost:3000/intervention/columns.json?building_address=2
        if params[:battery_id].present?
            @columns = Column.where(battery_id: params[:battery_id])
        else
            @columns = Column.all
        end
            respond_to do |format|
                format.json {
                    render json: {column: @columns}
                }
            end
    end

    def elevators
        # To test the requets: http://localhost:3000/intervention/elevators.json?building_address=4
        if params[:column_id].present?
            @elevators = Elevator.where(column_id: params[:column_id])
        else
            @elevators = Elevator.all
        end
            respond_to do |format|
                format.json {
                    render json: {elevator: @elevators}
                }
            end
    end

    # def elevator_id
    #         @elevator_id = params[:elevator_id]
    #         respond_to do |format|
    #             format.json {
    #                 render json: {elevator_id: @elevator_id}
    #             }
    #         end
    # end

    # def employee_id
    #         @employee_id = params[:employee_id]
    #         respond_to do |format|
    #             format.json {
    #                 render json: {employee_id: @employee_id}
    #             }
    #         end
    # end

    # def description
    #         @description = params[:description]
    #         respond_to do |format|
    #             format.json {
    #                 render json: {description: @description}
    #             }
    #         end
    # end

    def create
          @intervention = Intervention.create(
            Author: current_user.firstName + " " + current_user.lastName,
            CustomerID:params[:customer],
            BuildingID:params[:address],
            BatteryID:params[:battery],
            ColumnID:params[:column],
            ElevatorID:params[:elevator],
            EmployeeID:params[:employee],
            # Date_start
            # Date_end
            Résultat:[:Incomplete].sample,
            Rapport:params[:description],
            Statut:[:Pending].sample
          )

    
          ZendeskAPI::Ticket.create!($client, 
            :subject => "New intervention from #{@intervention.Author} for #{@business_name}'s building.'",
            :comment => { :value => "There is a new intervention at the building id:#{@intervention.BuildingID}.
            Here is the informations of the building:
            Battery id: #{@intervention.BatteryID}
            Column id: #{@intervention.ColumnID}
            Elevator id: #{@intervention.ElevatorID}
            Employee in charge of the intervention: #{@intervention.EmployeeID}
            Description: #{@intervention.Rapport}
            " }, 
            :type => 'problem',
            :priority => "normal")
     
        redirect_to "/intervention"
    end


end
