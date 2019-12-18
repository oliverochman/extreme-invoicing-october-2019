class CompanyController < ApplicationController
  def create
    company = Company.create(params)
    binding.pry
  end 

end
