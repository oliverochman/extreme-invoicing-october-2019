class CompaniesController < ApplicationController

  def index
    @company = Company.new
  end
  
  def create
    company = Company.create(company_params)
  end 

  private
  def company_params
    params.require(:company).permit(:name, :identification_no, :vat_no, :address, :postcode, :city, :phone)
  end

end
