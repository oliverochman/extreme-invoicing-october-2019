class CompaniesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    company = current_user.company
    if company == nil
      redirect_to new_company_path
    else
      redirect_to company_path(Company.ids)
    end
  end

  def new
    @company = Company.new
  end
  
  def create
    company = Company.create(company_params)

    if company.persisted?
      redirect_to invoices_path, notice: "Company information added."
    else
      redirect_to new_company_path, notice: "Something went wrong. Company Name is required."
    end
  end 

  def show
    @company = current_user.company
  end

  private
  def company_params
    params.require(:company).permit(:name, :identification_no, :vat_no, :address, :postcode, :city, :phone).merge(:user_id => current_user[:id])
  end
end
