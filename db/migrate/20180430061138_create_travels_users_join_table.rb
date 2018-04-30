class CreateTravelsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :travels, :users do |t|
      t.index [:travel_id, :user_id]
    end
  end
end
