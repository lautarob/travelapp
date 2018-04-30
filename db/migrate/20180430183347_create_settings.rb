class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.integer :name
      t.string :value
      t.string :type
      t.references :travel, foreign_key: true

      t.timestamps
    end
  end
end
