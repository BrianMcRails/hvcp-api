class DicomImageSerializer < ActiveModel::Serializer
  attributes :id, :image_uid, :original_volume, :path_to_image, :image_uri
  belongs_to :dicom_series
end
