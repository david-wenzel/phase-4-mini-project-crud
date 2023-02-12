class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    # def show
    #     spice = Spice.find_by(id: params[:id])
    #     render json: spice
    # end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: 201
    end

    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice, status: 201
    end

    def destroy
        spice = Spice.find_by(id: params[:id])  
        spice.destroy
        render json: spice, status: 201

    end


    
    private
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
      end



end
