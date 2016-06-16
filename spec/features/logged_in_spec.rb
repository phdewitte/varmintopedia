require 'rails_helper'

feature 'Functionality for user the is not logged in' do

  scenario 'Logged in user can see that logged in status' do
    user = User.create!(email: "m@m.com", password:"password")

    visit '/'
    click_link 'Sign Up'
    fill_in 'user[name]', with: 'm@m.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content "m@m"

  end

  scenario 'Logged in user can create article' do

  end

  scenario "When user creates edit user name shows next to article" do

  end

  scenario 'logged in user can see all of the contributions made' do

  end

end
