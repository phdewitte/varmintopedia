require 'rails_helper'

feature 'Functionality for user the is not logged in' do
  scenario 'User can Login' do
    visit '/'
    click_link "Login" #maybe button or tab

    expect(page).to have_link('Login')
  end

#   scenario 'User can see bibliography section' do
#     visit '/'


#     expect(page).to have_content('References')
#   end

  # scenario 'User can see edit article' do
  #   article = Article.create!(author: 1)
  #   version = Version.create!(title: "test test", body: "bobbbbb", published: true, editor: 1, article: 1, has_bibliography: true)

  #   visit '/articles/1'

  #   expect(page).to have_link('Edit')
  # end

#   # scenario 'User can see picture of an animal' do
#   #   visit '/'

#   #   expect(page).to has_xpath?("//img[contains(@src,\"/images/#{src}\")]")
#   # end

#   scenario 'User can click on different categories' do
#     category = Category.create!(name: "Rats")
#     visit '/'

#     # when we know which container we have
#     # within(".recent-games") do
#     #   expect(page).to have_content most_recent_game.user_throw
#     #   click_link("Show")
#     # end

#     expect(page).to have_current_path category_path(category)
#   end

#   scenario 'User can see featured article' do
#     visit '/'

#     expect(page).to have_content('Featured Article')
#   end

#   scenario 'User can click on an article' do
#     article = Article.create!(author: 1)
#     visit '/'
# #not sure hoe to test it exactly but this should work
#     expect(page).to have_current_path article_path(article)
#   end

#   # not sure where will this exist
#   # scenario 'User can publishing status of an article' do
#   #   visit '/'

#   #   expect(page).to have_content('Featured Article')
#   # end

#   scenario 'User can search articles' do

#     visit '/'

#     expect(page).to have_button('Search Article')
#   end
end
