class CitysuburbsController < InheritedResources::Base

  private

    def citysuburb_params
      params.require(:citysuburb).permit(:title, :description, :image)
    end

end
