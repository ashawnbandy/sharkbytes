class FixSharkDateTimeLanded < ActiveRecord::Migration
  def up
    remove_columns :sharks, :date_landed, :time_landed
    add_column :sharks, :date_landed, :datetime
  end

  def down
    remove_column :sharks, :date_landed
    add_column :sharks, :date_landed, :date
    add_column :sharks, :time_landed, :time
  end
end
