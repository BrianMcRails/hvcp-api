module Api::V1
  class DicomStudiesController < ApiController
    before_action :set_dicom_study, only: [:show, :update, :destroy]

    # GET /dicom_studies
    def index
      @dicom_studies = DicomStudy.all
      render json: @dicom_studies
    end

    # GET /dicom_studies/1
    def show
      render json: @dicom_study
    end

    # POST /dicom_studies
    def create
      @dicom_study = DicomStudy.new(dicom_study_params)

      if @dicom_study.save
        render json: @dicom_study, status: :created, location: @dicom_study
      else
        render json: @dicom_study.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /dicom_studies/1
    def update
      if @dicom_study.update(dicom_study_params)
        render json: @dicom_study
      else
        render json: @dicom_study.errors, status: :unprocessable_entity
      end
    end

    # DELETE /dicom_studies/1
    def destroy
      @dicom_study.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_dicom_study
        @dicom_study = DicomStudy.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def dicom_study_params
        params.require(:dicom_study).permit(:study_uid, :study_date, :description, :modality, :demographics_id)
      end
  end
end

