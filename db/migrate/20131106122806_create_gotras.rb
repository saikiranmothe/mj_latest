class CreateGotras < ActiveRecord::Migration
  def change
    create_table :gotras do |t|
      t.string :surname
      t.string :gotra
      t.string :kuldevi_matha
      t.text :location

      t.timestamps
    end
  end
end
