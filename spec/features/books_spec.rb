require 'rails_helper'

RSpec.feature 'books', type: :feature do
  scenario '#index' do
    visit books_path

    expect(page).to have_http_status(200)
  end
end
