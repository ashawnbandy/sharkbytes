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

require 'spec_helper'

describe Shark do

  before do
    @shark = Shark.new(idnumber:"testshark_prime")
  end

  subject { @shark }

  describe "Accessible attributes" do
    it "should respond to all of the tracked data" do
      should respond_to(:idnumber)
      should respond_to(:origination_entry)

      should respond_to(:date_landed)
      should respond_to(:condition)
      should respond_to(:catch_latitude)
      should respond_to(:catch_longitude)
      should respond_to(:taggers)

      should respond_to(:fisherman)
      should respond_to(:boat_name)
      should respond_to(:net_type)
      should respond_to(:fishing_capture_details)

      should respond_to(:release_latitude)
      should respond_to(:release_longitude)
      should respond_to(:release_details)
      should respond_to(:release_date)
      should respond_to(:initial_release_disposition)
      should respond_to(:release_sst)

      should respond_to(:sex)
      should respond_to(:total_length)
      should respond_to(:fork_length)
      should respond_to(:precaudal_length)
      should respond_to(:girth)
      should respond_to(:mass)

      should respond_to(:pat_ppt_number)
      should respond_to(:pat_tether_number)
      should respond_to(:pat_loop_number)
      should respond_to(:pat_release_date)

      should respond_to(:acoustic_code_id)
      should respond_to(:acoustic_serial_number)
      should respond_to(:acoustic_shutdown_date)

      should respond_to(:spot_ppt_number)

      should respond_to(:archival_dst_number)
      should respond_to(:other_tag_details)

      should respond_to(:dna)
      should respond_to(:blood_drawn)
      should respond_to(:tetracycline)
      should respond_to(:eye_stain)

      should respond_to(:comments)

    end
  end

  it { should be_valid }

  describe "when the idnumber isn't given" do
    before do
      @shark.idnumber = ''
    end

    it { should_not be_valid }
  end


  describe "with an origination entry" do

    before do
      @shark.save
      @other_shark = Shark.new(idnumber:"testshark_prime_sighting2",
                               origination_entry: @shark.id)
    end

    subject { @other_shark }

    it { should be_valid }

    it "should have the right originator" do
      @other_shark.originator.should be_valid
      @other_shark.originator.id.should == @shark.id
    end


  end

end
