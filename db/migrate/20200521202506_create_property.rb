class CreateProperty < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :owner_id
      t.string :name
      t.string :city
      t.string :state
      t.string :details
      t.string :img_url 
      t.integer :price_per_night
    end
  end
end
