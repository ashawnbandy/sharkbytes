class AddCaptureDetailsToShark < ActiveRecord::Migration
  def change
    add_column :sharks, :fisherman, :string
    add_column :sharks, :boat_name, :string
    add_column :sharks, :net_type, :string
    add_column :sharks, :fishing_capture_details, :text
  end
end
