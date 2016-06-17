# require 'rails_helper'

# feature 'Signing in' do
#   background do
#     User.create!(email: "a@a.com", password:"password")
#   end

#   scenario 'Signing in with correct credentials' do
#     visit '/'
#     click_link 'Login'
#     fill_in 'user[email]', with: 'a@a.com'
#     fill_in 'user[password]', with: 'password'
#     click_button 'Log in'

#     expect(page).to have_content "a@a.com"
#   end
# end
# #   scenario 'Logged in user can create article' do

# #   end

# #   scenario "When user creates edit user name shows next to article" do

# #   end

# #   scenario 'logged in user can see all of the contributions made' do

# #   end

