class DicomSeries < ApplicationRecord
  belongs_to :dicom_study, foreign_key: "dicom_studies_id"
  has_many :dicom_images, foreign_key: "dicom_series_id"
end
