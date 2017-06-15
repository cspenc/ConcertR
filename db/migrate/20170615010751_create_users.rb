class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :username
      t.text :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
