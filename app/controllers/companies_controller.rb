class CompaniesController < ApplicationController
  before_action :authenticate_user!

  def index
    company = Company.find(current_user[:id]) rescue nil

    if company == nil
      redirect_to new_company_path
    else
      redirect_to company_path(current_user[:id])
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
      redirect_to new_company_path, notice: "Something went wrong. Try again."
    end
  end 

  def show
    @company = Company.find(current_user[:id])
  end

  private
  def company_params
    params.require(:company).permit(:name, :org_no, :vat_no, :address, :postcode, :city, :phone).merge(:user_id => current_user[:id])
  end
end
