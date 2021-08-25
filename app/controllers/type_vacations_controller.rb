class TypeVacationsController < ApplicationController
  def index
    @typeVacations = TypeVacation.all
  end

  def new
    @typeVacation = TypeVacation.new
  end

  def create
    @typeVacation = TypeVacation.new(typeVacation_params)
    if @typeVacation.save
        redirect_to type_vacations_path, notice: "El tipo de vacacion ha sido creada exitosamente"
    else
        render :new
    end
  end

  def edit
    @typeVacation = TypeVacation.find(params[:id])
  end

  def update
    @typeVacation = TypeVacation.find(params[:id])
    if @typeVacation.update(typeVacation_params)
        redirect_to type_vacations_path, notice: "El tipo de vacacion ha sido actualizada exitosamente"
    else
        render :edit
    end
  end

  def destroy
    typeVacation = TypeVacation.find(params[:id])
    typeVacation.destroy

    redirect_to type_vacations_path, notice: "El tipo de vacacion ha sido eliminada exitosamente"
  end

  private
    def typeVacation_params
      params.require(:type_vacation).permit(:description)
    end
end
