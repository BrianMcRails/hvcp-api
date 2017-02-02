class Demographic < ApplicationRecord
  has_many :dicom_studies, foreign_key: "demographics_id"
end
