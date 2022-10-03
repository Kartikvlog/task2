class CompaniesController < ApplicationController
	def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(room_params)
    if @room.save
      redirect_to @company
    else
      render 'new'
    end
  end

  def update
    @company = Company.find(params[:id])
    if @room.update(company_params)
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy
    @company = Room.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end

  private
  def company_params
    params.require(:company).permit()
  end
end
