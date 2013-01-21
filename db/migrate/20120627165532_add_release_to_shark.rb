class AddReleaseToShark < ActiveRecord::Migration
  def change
    add_column :sharks, :release_latitude, :decimal, precision:10, scale:7
    add_column :sharks, :release_longitude, :decimal, precision:10, scale:7
    add_column :sharks, :release_details, :text
    add_column :sharks, :release_date, :datetime
    add_column :sharks, :initial_release_disposition, :string
    add_column :sharks, :release_sst, :decimal, precision:15, scale:10
  end
end
