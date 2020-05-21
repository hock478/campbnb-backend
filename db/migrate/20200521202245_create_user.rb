class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :bio
      t.string :image_url
    end
  end
end
