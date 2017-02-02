class DemographicSerializer < ActiveModel::Serializer
  attributes :id, :last_name, :first_name, :dicom_studies
  has_many :dicom_studies
  class DicomStudySerializer < ActiveModel::Serializer
    attributes :id, :study_uid, :study_date, :description, :modality
  end
end
