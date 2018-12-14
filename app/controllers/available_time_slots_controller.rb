class AvailableTimeSlotsController < InheritedResources::Base

  private

    def available_time_slot_params
      params.require(:available_time_slot).permit(:hour, :references)
    end
end

