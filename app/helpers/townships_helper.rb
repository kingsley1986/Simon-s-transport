module TownshipsHelper

    def township_index 
        @township = Township.page(params[:page]).per(3)
    end
end
