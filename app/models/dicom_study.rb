class DicomStudy < ApplicationRecord
  belongs_to :demographic, foreign_key: "demographics_id"
  has_many :dicom_series, foreign_key: "dicom_studies_id"
end
