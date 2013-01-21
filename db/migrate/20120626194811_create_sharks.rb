class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.string :idnumber

      t.timestamps
    end
  end
end
