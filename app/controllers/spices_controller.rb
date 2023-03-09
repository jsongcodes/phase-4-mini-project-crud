class SpicesController < ApplicationController
    def index
        spices = Spice.all
        render json: spices
    end

    def create
        spice = Spice.create(spices_params)
        render json: spice, status: :created
    end

    def update
        spice = find_spice
        spice.update(spices_params)
        render json: spice
    end

    def destroy
        spice = find_spice
        spice.destroy
    end

    private

    def find_spice
        Spice.find(params[:id])
    end

    def spices_params
        params.permit(:title, :image, :description, :notes, :rating)
    
    end


end
