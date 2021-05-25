class CompaniesController < ApplicationController

    def show 
        @company = Company.find(params[:id])
        @employee = Employee.new 
    end 

    def new 
        @company = Company.new 
    end 

    def create
        @company = Company.new(company_params)
    end 

    private 
    def company_params
        params.require(:company).permit(:name)
    end 

    def employee_params
        params.require(:employee).permit(:name, :title)
    end 

end