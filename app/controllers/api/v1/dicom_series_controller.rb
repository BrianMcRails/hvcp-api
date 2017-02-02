module Api::V1
  class DicomSeriesController < ApiController
    before_action :set_dicom_series, only: [:show, :update, :destroy]

    # GET /dicom_series
    def index
      @dicom_series = DicomSeries.all

      render json: @dicom_series
    end

    # GET /dicom_series/1
    def show
      render json: @dicom_series
    end

    # POST /dicom_series
    def create
      @dicom_series = DicomSeries.new(dicom_series_params)

      if @dicom_series.save
        render json: @dicom_series, status: :created, location: @dicom_series
      else
        render json: @dicom_series.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /dicom_series/1
    def update
      if @dicom_series.update(dicom_series_params)
        render json: @dicom_series
      else
        render json: @dicom_series.errors, status: :unprocessable_entity
      end
    end

    # DELETE /dicom_series/1
    def destroy
      @dicom_series.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_dicom_series
        @dicom_series = DicomSeries.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def dicom_series_params
        params.require(:dicom_series).permit(:series_uid, :modality, :dicom_studies_id)
      end
  end
end

