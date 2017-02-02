class CreateDicomImages < ActiveRecord::Migration[5.0]
  def change
    create_table :dicom_images do |t|
      t.string :image_uid
      t.string :original_volume
      t.string :path_to_image
      t.references :dicom_series, foreign_key: true

    end
  end
end
