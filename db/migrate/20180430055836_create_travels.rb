class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.datetime :date_from
      t.datetime :date_to
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
