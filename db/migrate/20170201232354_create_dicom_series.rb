class CreateDicomSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :dicom_series do |t|
      t.string :series_uid
      t.string :modality
      t.references :dicom_studies, foreign_key: true
    end
  end
end
