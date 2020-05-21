class CreateReview < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :reservation_id
      t.integer :rating
      t.string :content
    end
  end
end
