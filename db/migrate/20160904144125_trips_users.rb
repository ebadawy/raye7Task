class TripsUsers < ActiveRecord::Migration[5.0]
  def change
  	create_table :trips_users, :id => false do |t|
		t.integer :trip_id
		t.integer :user_id
    end
  end
end
