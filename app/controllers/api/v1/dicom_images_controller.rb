module Api::V1
  class DicomImagesController < ApiController
    before_action :set_dicom_image, only: [:show, :update, :destroy]

    # GET /dicom_images
    def index
      @dicom_images = DicomImage.all

      render json: @dicom_images, :methods => :image_uri
    end

    # GET /dicom_images/1
    def show
      send_file(@dicom_image.get_image_path, :disposition => "inline", :type => "video/mp4")
    end

    # POST /dicom_images
    def create
      @dicom_image = DicomImage.new(dicom_image_params)

      if @dicom_image.save
        render json: @dicom_image, status: :created, location: @dicom_image
      else
        render json: @dicom_image.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /dicom_images/1
    def update
      if @dicom_image.update(dicom_image_params)
        render json: @dicom_image
      else
        render json: @dicom_image.errors, status: :unprocessable_entity
      end
    end

    # DELETE /dicom_images/1
    def destroy
      @dicom_image.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_dicom_image
        @dicom_image = DicomImage.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def dicom_image_params
        params.require(:dicom_image).permit(:image_uid, :original_volume, :path_to_image, :dicom_series_id)
      end
  end
end

