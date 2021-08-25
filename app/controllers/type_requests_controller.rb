class TypeRequestsController < ApplicationController
  def index
    @typeRequests = TypeRequest.all
  end

  def new
    @typeRequest = TypeRequest.new
  end

  def create
    @typeRequest = TypeRequest.new(typeRequest_params)
    if @typeRequest.save
      redirect_to type_requests_path, notice: "El tipo de solicitud ha sido creada exitosamente"
    else
      render :new
    end
  end

  def edit
    @typeRequest = TypeRequest.find(params[:id])
  end

  def update
    @typeRequest = TypeRequest.find(params[:id])
    if @typeRequest.update(typeRequest_params)
      redirect_to type_requests_path, notice: "El tipo de solicitud ha sido actualizada exitosamente"
    else
      render :edit
    end
  end

  def destroy
    typeRequest = TypeRequest.find(params[:id])
    typeRequest.destroy

    redirect_to type_requests_path, notice: "El tipo de solicitud ha sido eliminada exitosamente"
  end

  private
    def typeRequest_params
      params.require(:type_request).permit(:description)
    end
end
