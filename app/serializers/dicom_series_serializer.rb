class DicomSeriesSerializer < ActiveModel::Serializer
  attributes :id, :series_uid, :modality, :dicom_images
  has_many :dicom_images, include_nested_associations: true

end
