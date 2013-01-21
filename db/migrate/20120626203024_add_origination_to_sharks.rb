class AddOriginationToSharks < ActiveRecord::Migration
  def change
    change_table :sharks do |t|
      t.integer :origination_entry
    end
  end
end
