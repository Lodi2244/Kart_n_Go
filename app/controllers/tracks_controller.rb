class TracksController < InheritedResources::Base
  def index
    @tracks = Track.all
    @city_options = Track.all.map { |c| [c.city, c.id] }
    @tracks = Track.where(id: params[:city])
  end

  def new
  end

  def create
    @track = Track.new(track_params)
  end

    def show
      @track = Track.find(params[:id])
    end

  private

    def track_params
      params.require(:tracks).permit(:name, :city)
    end
end
