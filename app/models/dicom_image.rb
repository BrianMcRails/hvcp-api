class DicomImage < ApplicationRecord
  belongs_to :dicom_series, foreign_key: "dicom_series_id"

  def image_uri
    uri = 'http://api.lvh.me:3000/v1/demographics/' + self.dicom_series.dicom_study.demographic.id.to_s + '/dicom_studies/' +
        self.dicom_series.dicom_study.id.to_s + '/dicom_series/' + self.dicom_series.id.to_s + '/dicom_images/' +
        self.id.to_s
  end
  def get_image_path
    path = 'C:\Temp\Volume1' + '\\' + self.dicom_series.dicom_study.study_uid + '\\' +
          self.dicom_series.series_uid + '\\' + self.image_uid + '\\' + 'Output.mp4'
  end
end
