class CreateReservation < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :property_id
      t.string :start_date
      t.string :end_date
    end
  end
end
