class DicomSeriesSerializer < ActiveModel::Serializer
  belongs_to :dicom_study
  attributes :id, :series_uid, :modality, :dicom_images

end
