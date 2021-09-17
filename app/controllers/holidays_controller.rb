class HolidaysController < ApplicationController
  def index
    @holidays = Holiday.all
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)
    if @holiday.save
      redirect_to holidays_path, notice: "La solicitud de vacaciones ha sido creado exitosamente"
    else
      render :new
    end
  end

  private

  def holiday_params
    params.require(:holiday).permit(:proposed_date, :type_vacation_id)
  end
end
