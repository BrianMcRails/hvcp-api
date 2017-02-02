class DemographicSerializer < ActiveModel::Serializer
  attributes :id, :last_name, :first_name, :dicom_studies

end
