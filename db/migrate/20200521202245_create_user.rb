class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :bio
      t.string :image_url
      t.string :password_digest
    end
  end
end
