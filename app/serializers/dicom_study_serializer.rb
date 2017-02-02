class DicomStudySerializer < ActiveModel::Serializer
  belongs_to :demographic
  attributes :demographic, :id, :study_uid, :study_date, :description, :modality, :dicom_series

end
