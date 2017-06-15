class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :band
      t.string :venue
      t.datetime :date_time
      t.text :description

      t.timestamps
    end
  end
end
