class CreateKuldeviMata < ActiveRecord::Migration
  def change
    create_table :kuldevi_mata do |t|
      t.string :name
      t.string :address1
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.text :how_to_reach
      t.string :contact_details
      t.string :website

      t.timestamps
    end
  end
end
