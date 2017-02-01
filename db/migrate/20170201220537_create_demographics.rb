class CreateDemographics < ActiveRecord::Migration[5.0]
  def change
    create_table :demographics do |t|
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
