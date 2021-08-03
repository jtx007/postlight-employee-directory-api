module Api
  module V1
    class TitlesController < ApplicationController
      before_action :set_title, only: %i[ show update destroy ]

      # GET /titles
      # GET /titles.json
      def index
        @titles = Title.all
      end

      # GET /titles/1
      # GET /titles/1.json
      def show
      end

      # POST /titles
      # POST /titles.json
      def create
        @title = Title.new(title_params)

        if @title.save
          render :show, status: :created
        else
          render json: @title.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /titles/1
      # PATCH/PUT /titles/1.json
      def update
        if @title.update(title_params)
          render :show, status: :ok
        else
          render json: @title.errors, status: :unprocessable_entity
        end
      end

      # DELETE /titles/1
      # DELETE /titles/1.json
      def destroy
        @title.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_title
          @title = Title.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def title_params
          params.require(:title).permit(:jobtitle)
        end
    end
  end
end
