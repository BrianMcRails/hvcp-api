class CreateDicomStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :dicom_studies do |t|
      t.string :study_uid
      t.timestamp :study_date
      t.string :description
      t.string :modality
      t.references :demographics, foreign_key: true

    end
  end
end
