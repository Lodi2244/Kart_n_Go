class HomeController < ApplicationController
  def index
    @timeslots = AvailableTimeSlot.all
    @tracks = Track.all
    @city_options = Track.all.map { |c| [c.city, c.id] }
    @tracks = Track.where(id: params[:city])
  end

  def new
  end

  def create
    @timeslot = AvailableTimeSlot.new(timeslot_params)
      if @timeslot.save
        redirect_to available_time_slots_path(@timeslot)
      else
        render 'index'
      end
  end

    def show
      @timeslot = AvailableTimeSlot.find(params[:id])
    end

    private

    def timeslot_params
      params.require(:available_time_slots).permit(:hour, :track_id)
    end
  end
