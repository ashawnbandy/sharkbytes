require 'spec_helper'

describe 'Core pages and Devise integration' do

  subject { page }  # thanks, Capybara!

  describe 'Visiting the root_path' do
    before { visit root_path }

    describe 'as a logged-in user' do
      let (:user) { FactoryGirl.create(:user)}

      before do
        valid_signin user
        visit root_path
      end

      it 'should be the home page' do
        should have_content('Home')
        current_path.should == root_path  
      end

      it 'should have a sign out link' do
        find_link('Sign Out')[:href].should == destroy_user_session_path
      end

      describe 'logging out from the home page' do
        before { click_link('Sign Out') }

        it 'should send the user to the login page' do
          current_path.should == new_user_session_path
        end
      end

    end

    describe 'as a not-logged-in user' do

      it 'should redirect to the login page' do
        current_path.should == new_user_session_path
      end

    end
  end

end
