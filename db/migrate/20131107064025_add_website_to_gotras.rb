class AddWebsiteToGotras < ActiveRecord::Migration
  def change
    add_column :gotras, :website, :string
  end
end
