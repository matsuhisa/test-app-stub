require 'rails_helper'

RSpec.feature 'books', type: :feature do
  context '#index' do
    scenario '' do
      visit books_path
      expect(page).to have_http_status(200)
    end
  end

  context '#show' do
    let(:book) { create(:book) }

    it "" do
      visit book_path book
      expect(page).to have_http_status(200)
    end
  end
end
