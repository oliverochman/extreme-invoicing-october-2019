class CompaniesController < ApplicationController

  def index
    companies = Company.all
    if companies.empty?
      redirect_to new_company_path
    else
      redirect_to company_path(Company.find_by(current_user[:user_id]))
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
    @company = Company.find_by(current_user[:user_id])
  end

  private
  def company_params
    params.require(:company).permit(:name, :identification_no, :vat_no, :address, :postcode, :city, :phone).merge(:user_id => current_user[:id])
  end
end
