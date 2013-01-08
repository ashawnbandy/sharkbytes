include ApplicationHelper

def valid_signin(user)
  fill_in "user[email]",    with: user.email
  fill_in "user[password]", with: user.password
  click_button "Sign in"
end

def invalid_signin
  fill_in "user[email]", with: "fakeuser@fakedomain.com" 
  fill_in "user[password]", with: "fakefakefake"
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end