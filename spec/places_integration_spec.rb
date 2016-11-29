require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('sends user input to output page', {:type => :feature}) do
  visit ('/')
  fill_in('new_place', :with => "Tokyo")
  click_button('Submit!')
  expect(page).to have_content("Tokyo")
end
