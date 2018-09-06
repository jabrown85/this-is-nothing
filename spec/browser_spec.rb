require File.dirname(__FILE__) + '/acceptance_helper'

feature 'Navigation' do
  scenario 'they visit the hello page' do
    visit 'https://google.com'
    expect(page).to have_content 'About'
  end
end
