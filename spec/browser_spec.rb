require File.dirname(__FILE__) + '/acceptance_helper'

describe "the signin process", type: :feature do
  it "signs me in" do
    visit '/hello'
    expect(page).to have_content 'World'
  end
end