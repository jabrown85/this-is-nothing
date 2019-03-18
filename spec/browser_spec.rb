require File.dirname(__FILE__) + '/acceptance_helper'

feature 'Navigation' do
  scenario 'they visit the root page' do
    visit '/'
    expect(page).to have_content 'testing'
  end

  scenario 'they visit the hello page' do
    visit '/hello'
    expect(page).to have_content 'world'
  end
end
