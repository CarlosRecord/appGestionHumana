class PermissionsController < ApplicationController
  def index
    @permissions = Permission.all
  end

  def new
    @permission = Permission.new
  end

  def create
    @permission = Permission.new(permission_params)
    if @permission.save
      redirect_to permissions_path, notice: "La solicitud de permiso ha sido creado exitosamente"
    else
      render :new
    end
  end

  private

  def permission_params
    params.require(:permission).permit(:start_date, :end_date, :proposal, :type_permission_id, :reason_permission_id)
  end
end
