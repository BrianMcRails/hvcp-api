module Api::V1
  class DemographicsController < ApiController
    before_action :set_demographic, only: [:show, :update, :destroy]

    # GET /demographics
    def index
      @demographics = Demographic.all

      render json: @demographics
    end

    # GET /demographics/1
    def show
      render json: @demographic
    end

    # POST /demographics
    def create
      @demographic = Demographic.new(demographic_params)

      if @demographic.save
        render json: @demographic, status: :created, location: @demographic
      else
        render json: @demographic.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /demographics/1
    def update
      if @demographic.update(demographic_params)
        render json: @demographic
      else
        render json: @demographic.errors, status: :unprocessable_entity
      end
    end

    # DELETE /demographics/1
    def destroy
      @demographic.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_demographic
        @demographic = Demographic.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def demographic_params
        params.require(:demographic).permit(:last_name, :first_name)
      end
  end
end

