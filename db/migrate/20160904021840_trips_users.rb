class TripsUsers < ActiveRecord::Migration[5.0]
  def change
  	def change
	  	create_table :trips_users, :id => false do |t|
	      t.integer :user_id
	      t.integer :trip_id
	    end

	    add_index :trips_users, [:user_id, :trip_id]
	  end
  end
end
