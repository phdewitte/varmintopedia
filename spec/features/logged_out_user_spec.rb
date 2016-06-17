require 'rails_helper'

feature 'Visiting pages when not logged in' do
  before(:all) do
    User.destroy_all
    Version.destroy_all
    Article.destroy_all
    Category.destroy_all

    user = User.create!(email: "m@m.com", password:"password")
    @article1 = Article.create!(author: user)
    @article1.versions.create!(title: "Test Version",
                    body: "<h1>A test</h1><p>some content</p>",
                    editor: user)
    article2 = Article.create!(author: user)
    article2.versions.create!(title: "Another Test Version",
                    body: "<h1>Another test</h1><p>some more content</p>",
                    editor: user)
    article3 = Article.create!(author: user)
    article3.versions.create!(title: "A Third Test Version",
                    body: "<h1>A test</h1><p>some content</p>",
                    editor: user)

    Category.create!(name: "Furry")
    Category.create!(name: "Dirty")
  end

  scenario 'visiting index' do
    p Article.all
    visit '/'
    expect(page).to have_content "Featured Articles:"
    expect(page).to have_content "Login"
    expect(page).to have_content "Register"
    expect(page).to have_content "Featured Articles:"
  end

  scenario 'visiting categories index' do
    visit '/'
    click_link 'All categories'
    expect(page).to have_content "Categories"

  end

  scenario 'logging in unsuccessfully' do
    visit '/'
    click_link 'Login'
    expect(page).to have_content "Log in"

    fill_in 'user[email]', with: 'm@m.com'
    fill_in 'user[password]', with: 'wordpass'
    click_button 'Log in'

    expect(page).to have_content 'Invalid Email or password'
  end

  scenario 'clicking register' do
    visit '/'
    click_link 'Register'
    expect(page).to have_content "Sign up"
  end

  scenario 'searching for a keyword' do
    visit '/'
    fill_in 'search_criteria', with: 'Furry'
    click_button 'Submit'
    expect(page).to have_content "Search Results"
  end

  scenario 'visiting a featured article' do
    visit '/'
    within first('.featured-article') do
      find(:css, 'h3 a').click
    end
    expect(page).to have_content "Read | Edit | View History"
  end

  # scenario 'editing an article anonymously' do
  #   visit article_path(Article.first)
  #   click_link 'Edit'
  #   expect(page).to have_content 'Title'
  #   fill_in 'version[body]', with: 'Testing'
  #   fill_in 'version[body]', with: 'Testing'
  #   click_button 'Create Version'
  #   expect(page).to have_content "Title"
  #   expect(page).to have_content "version was successfully created"
  # end
end
