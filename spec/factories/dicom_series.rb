FactoryGirl.define do
  factory :dicom_series do
    series_uid "MyString"
    modality "MyString"
    dicom_studies nil
  end
end
