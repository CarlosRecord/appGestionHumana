class CertificatesController < ApplicationController
  def index
    @certificates = Certificate.all
  end

  def new
    @certificate = Certificate.new
  end

  def create
    @certificate = Certificate.new(certificate_params)
    if @certificate.save
      redirect_to certificates_path, notice: "La solicitud de certificado laboral ha sido creado exitosamente"
    else
      render :new
    end
  end

  private

  def certificate_params
    params.require(:certificate).permit(:addressee, :type_contract, :salary, :funtions, :time_working, :directed_certificate_id)
  end
end
