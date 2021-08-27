class DirectedCertificatesController < ApplicationController
  def index
    @directedCertificates = DirectedCertificate.all
  end

  def new
    @directedCertificate = DirectedCertificate.new
  end

  def create
    @directedCertificate = DirectedCertificate.new(directedCertificate_params)
    if @directedCertificate.save
      redirect_to directed_certificates_path, notice: "El dirigido para el certificado laboral se ha sido creado exitosamente"
    else
      render :new
    end
  end

  def edit
    @directedCertificate = DirectedCertificate.find(params[:id])
  end

  def update
    @directedCertificate = DirectedCertificate.find(params[:id])
    if @directedCertificate.update(directedCertificate_params)
      redirect_to directed_certificates_path, notice: "El dirigido para el certificado laboral se ha sido actualizado exitosamente"
    else
      render :edit
    end
  end

  def destroy
    directedCertificate = DirectedCertificate.find(params[:id])
    directedCertificate.destroy

    redirect_to directed_certificates_path, notice: "El dirigido para el certificado laboral se ha sido eliminado exitosamente"
  end

  private
  def directedCertificate_params
    params.require(:directed_certificate).permit(:description)
  end
end
