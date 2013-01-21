# == Schema Information
#
# Table name: sharks
#
#  id                          :integer         not null, primary key
#  idnumber                    :string(255)
#  created_at                  :datetime        not null
#  updated_at                  :datetime        not null
#  origination_entry           :integer
#  condition                   :string(255)
#  catch_latitude              :decimal(10, 7)
#  catch_longitude             :decimal(10, 7)
#  taggers                     :text
#  date_landed                 :datetime
#  fisherman                   :string(255)
#  boat_name                   :string(255)
#  net_type                    :string(255)
#  fishing_capture_details     :text
#  release_latitude            :decimal(10, 7)
#  release_longitude           :decimal(10, 7)
#  release_details             :text
#  release_date                :datetime
#  initial_release_disposition :string(255)
#  release_sst                 :decimal(15, 10)
#  sex                         :string(255)
#  total_length                :decimal(15, 10)
#  fork_length                 :decimal(15, 10)
#  precaudal_length            :decimal(15, 10)
#  girth                       :decimal(15, 10)
#  mass                        :decimal(15, 10)
#  pat_ppt_number              :string(255)
#  pat_tether_number           :string(255)
#  pat_loop_number             :string(255)
#  pat_release_date            :datetime
#  acoustic_code_id            :string(255)
#  acoustic_serial_number      :string(255)
#  acoustic_shutdown_date      :datetime
#  spot_ppt_number             :string(255)
#  archival_dst_number         :string(255)
#  other_tag_details           :text
#  dna                         :string(255)
#  blood_drawn                 :decimal(15, 10)
#  tetracycline                :decimal(15, 10)
#  eye_stain                   :boolean
#  procedure_notes             :text
#  comments                    :text
#

class Shark < ActiveRecord::Base
  # Origination Entry links
  belongs_to :originator, class_name: "Shark", foreign_key:"origination_entry"


  attr_accessible :idnumber, :origination_entry, :date_landed,
    :condition, :catch_longitude, :catch_latitude, :taggers,
    :fisherman, :boat_name, :net_type, :fishing_capture_details,
    :release_latitude, :release_longitude, :release_date, :initial_release_disposition,
    :release_sst, :release_details, :sex, :total_length, :fork_length, :precaudal_length,
    :girth, :mass, :pat_ppt_number, :pat_tether_number, :pat_loop_number,
    :pat_release_date, :acoustic_code_id, :acoustic_serial_number, :acoustic_shutdown_date,
    :spot_ppt_number, :archival_dst_number, :other_tag_details, :dna, :blood_drawn,
    :tetracycline, :eye_stain, :procedure_notes, :comments
  
  validates :idnumber, presence: true


  def has_origin?
    originator != nil
  end

  def condition_choices
    {
      "Dead On Arrival (DOA)" => "DOA",
      "Live" => "Live"
    }
  end

  def sex_choices
    {
      "Male" => "Male",
      "Female" => "Female"
    }
  end

end
