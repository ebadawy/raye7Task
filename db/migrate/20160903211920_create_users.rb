class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :phone_number
      t.integer :home_place_id
      t.integer :work_place_id
      t.integer :group_id

      t.timestamps
    end

    add_index :users, [:home_place_id, :work_place_id, :group_id]
  end
end