require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_repeat', {:type => :feature}) do
  it('tells you the amount of times your word is found in your sentence') do
    visit('/')
    fill_in('self', :with => "me")
    fill_in('user_string', :with => "me loves me")
    click_button('Send')
    expect(page).to have_content(2)
  end
end
