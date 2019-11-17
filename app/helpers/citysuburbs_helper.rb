module CitysuburbsHelper

    def city_suburbs_index 
        @citysuburbs = Citysuburb.page(params[:page]).per(4)
    end
end
