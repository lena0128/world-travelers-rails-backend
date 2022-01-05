class GuidesController < ApplicationController

       def index
        guides = Guide.all
        render json: guides, key_transform: :camel_lower
       end 

       def create
        guide = Guide.new(review_params)
        if guide.save
            render json: guide, status: :created
        else
            render json: guide.errors, status: :unprocessable_entity
        end
       end

       def destroy
        guide = Guide.find(params[:id])
        guide.destroy
         render json: {message: "Review succesfully deleted"}
       end

       private
       def guide_params
        params.require(:guide).permit(:title, :body, :city_id)
       end
end
