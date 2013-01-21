class AddRestToSharks < ActiveRecord::Migration
  def change
    add_column :sharks, :sex, :string
    add_column :sharks, :total_length, :decimal, precision:15, scale:10
    add_column :sharks, :fork_length, :decimal, precision:15, scale:10
    add_column :sharks, :precaudal_length, :decimal, precision:15, scale:10
    add_column :sharks, :girth, :decimal, precision:15, scale:10
    add_column :sharks, :mass, :decimal, precision:15, scale:10

    add_column :sharks, :pat_ppt_number, :string
    add_column :sharks, :pat_tether_number, :string
    add_column :sharks, :pat_loop_number, :string
    add_column :sharks, :pat_release_date, :datetime

    add_column :sharks, :acoustic_code_id, :string
    add_column :sharks, :acoustic_serial_number, :string
    add_column :sharks, :acoustic_shutdown_date, :datetime

    add_column :sharks, :spot_ppt_number, :string

    add_column :sharks, :archival_dst_number, :string
    add_column :sharks, :other_tag_details, :text

    add_column :sharks, :dna, :string
    add_column :sharks, :blood_drawn, :decimal, precision:15, scale:10
    add_column :sharks, :tetracycline, :decimal, precision:15, scale:10
    add_column :sharks, :eye_stain, :boolean
    add_column :sharks, :procedure_notes, :text

    add_column :sharks, :comments, :text
  end
end
