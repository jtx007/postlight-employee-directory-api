require 'faker'
module Api
  module V1
    class EmployeesController < ApplicationController
      before_action :set_employee, only: %i[ show update destroy ]

      # GET /employees
      # GET /employees.json
      def index

        if !params[:filter].blank? 
            @employees = Employee.where("LOWER(name)  LIKE ?  OR LOWER(email) LIKE ?", "%#{params[:filter].downcase}%")
        else
          @pagy, @employees = pagy(Employee.all, items: 10, page: params[:page])
        end
      
        
      end

      # GET /employees/1
      # GET /employees/1.json
      def show
        @employee = Employee.find(params[:id])
      end

      # POST /employees
      # POST /employees.json
      def create
        @employee = Employee.new(employee_params)
        @employee.avatar = Faker::Avatar.image
        if @employee.save
          render :show, status: :created
        else
          render json: @employee.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /employees/1
      # PATCH/PUT /employees/1.json
      def update
        if @employee.update(employee_params)
          render :show, status: :ok
        else
          render json: @employee.errors, status: :unprocessable_entity
        end
      end

      # DELETE /employees/1
      # DELETE /employees/1.json
      def destroy
        @employee.destroy
        render json: {"message": "Employee deleted"}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_employee
          @employee = Employee.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def employee_params
          params.require(:employee).permit(:name, :email, :avatar, :location_id, :department_id, :title_id)
        end
    end
  end
end
