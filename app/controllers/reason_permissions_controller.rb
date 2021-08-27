class ReasonPermissionsController < ApplicationController
  def index
    @reasonPermissions = ReasonPermission.all
  end

  def new
    @reasonPermission = ReasonPermission.new
  end

  def create
    @reasonPermission = ReasonPermission.new(reasonPermission_params)
    if @reasonPermission.save
      redirect_to reason_permissions_path, notice: "El motivo del permiso ha sido creado exitosamente"
    else
      render :new
    end
  end

  def edit
    @reasonPermission = ReasonPermission.find(params[:id])
  end

  def update
    @reasonPermission = ReasonPermission.find(params[:id])
    if @reasonPermission.update(reasonPermission_params)
      redirect_to reason_permissions_path, notice: "El motivo de la permiso ha sido actualizado exitosamente"
    else
      render :edit
    end
  end

  def destroy
    @reasonPermission = ReasonPermission.find(params[:id])
    @reasonPermission.destroy

    redirect_to reason_permissions_path, notice: "El motivo del permiso ha sido eliminado exitosamente"
  end

  private
    def reasonPermission_params
      params.require(:reason_permission).permit(:description)
    end
end