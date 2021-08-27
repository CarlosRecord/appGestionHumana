class TypePermissionsController < ApplicationController
  def index
    @typePermissions = TypePermission.all
  end

  def new
    @typePermission = TypePermission.new
  end

  def create
    @typePermission = TypePermission.new(typePermission_params)
    if @typePermission.save
      redirect_to type_permissions_path, notice: "El tipo de permiso ha sido creado exitosamente"
    else
      render :new
    end
  end

  def edit
    @typePermission = TypePermission.find(params[:id])
  end

  def update
    @typePermission = TypePermission.find(params[:id])
    if @typePermission.update(typePermission_params)
      redirect_to type_permissions_path, notice: "El tipo de permiso ha sido actualizado exitosamente"
    else
      render :edit
    end
  end

  def destroy
    typePermission = TypePermission.find(params[:id])
    typePermission.destroy

    redirect_to type_permissions_path, notice: "EL tipo de permiso ha sido eliminado exitosamente"
  end

  private
  def typePermission_params
    params.require(:type_permission).permit(:description)
  end
end
