class DicomStudySerializer < ActiveModel::Serializer
  attributes :id, :study_uid, :study_date, :description, :modality
  has_many :dicom_series, include_nested_associations: true

end
