module Api
  module V1
    class LocationsController < ApplicationController
      before_action :set_location, only: %i[ show update destroy ]

      # GET /locations
      # GET /locations.json
      def index
        @locations = Location.all
      end

      # GET /locations/1
      # GET /locations/1.json
      def show
      end

      # POST /locations
      # POST /locations.json
      def create
        @location = Location.new(location_params)

        if @location.save
          render :show, status: :created
        else
          render json: @location.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /locations/1
      # PATCH/PUT /locations/1.json
      def update
        if @location.update(location_params)
          render :show, status: :ok
        else
          render json: @location.errors, status: :unprocessable_entity
        end
      end

      # DELETE /locations/1
      # DELETE /locations/1.json
      def destroy
        @location.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_location
          @location = Location.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def location_params
          params.require(:location).permit(:state)
        end
    end
  end
end
