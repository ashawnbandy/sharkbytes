class AddGeneralDataToSharks < ActiveRecord::Migration
  def change
    add_column :sharks, :date_landed, :date
    add_column :sharks, :time_landed, :time
    add_column :sharks, :condition, :string
    add_column :sharks, :catch_latitude, :decimal, precision:10, scale:7
    add_column :sharks, :catch_longitude, :decimal, precision:10, scale:7
    add_column :sharks, :taggers, :text
  end
end
