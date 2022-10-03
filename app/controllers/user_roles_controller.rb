class UserRolesController < ApplicationController
	def index
    @user_roles = UserRole.all
    end

  def show
    @user_role = UserRole.find(params[:id])
  end

  def new
    @user_role = UserRole.new
  end

  def edit
    @user_role = UserRole.find(params[:id])
  end

  def create
    @user_role = UserRole.new(userrole_params)
    if @user_role.save
      redirect_to @user_role
    else
      render 'new'
    end
  end

  def update
    @user = UserRole.find(params[:id])
    if @user_role.update(userrole_params)
      redirect_to @user_role
    else
      render 'edit'
    end
  end

  def destroy
    @user_role = UserRole.find(params[:id])
    @user_role.destroy
    redirect_to users_path
  end

  private
  def userrole_params
    params.require(:user).permit()
  end
end
