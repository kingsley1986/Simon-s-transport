class TownshipsController < InheritedResources::Base

  private

    def township_params
      params.require(:township).permit(:title, :description, :image)
    end

end
