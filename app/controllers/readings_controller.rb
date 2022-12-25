class ReadingsController < ApplicationController
  def index
    @readings = current_user.readings
  end

  def create
    reading_count = current_user.readings.reading_count_of_day
    @reading = current_user.readings.create(reading_params.merge({ reading_count: }))
    if @reading.valid?
      redirect_to root_path, notice: 'Glucose level was successfully added.'
    else
      flash[:alert] = @reading.errors.full_messages.join(',')
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @reading = Reading.new
  end

  private

  def reading_params
    params.require(:reading).permit(:level)
  end
end
