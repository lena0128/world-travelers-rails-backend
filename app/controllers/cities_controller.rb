class CitiesController < ApplicationController

    def index
        cities = City.all
        render json: cities, key_transform: :camel_lower
    end

    def show
        city = City.find_by(id: params[:id])
        render json: city, key_transform: :camel_lower
    end

    def create
        city = City.new(city_params)
        if city.save
            render json: city, key_transform: :camel_lower
        else
            render json: {message: "City could not be saved. Please try again."}
    end

    def update
        city = City.find_by(id: params[:id])
        if city.update(city_params)
            render json: city, key_transform: :camel_lower
        else
            render json: {message: "City could not be saved. Please try again."}
        end
    end

    def destroy
        city = City.find_by(id: params[:id])
        city.destory
        render json: {message: "Successfully deleted #{city.name}."}
    end

    private
    def city_params
        params.require(:city).permit(:name, :country, :image, :summary, :content, :likes)
    end

end
