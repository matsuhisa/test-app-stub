require 'rails_helper'

RSpec.feature 'books', type: :feature do
  context '#index' do
    scenario '' do
      visit books_path
      expect(page).to have_http_status(200)
    end
  end

  context "WebMock", vcr: true do
    # background do
    #   stub_request(:get, "/books").to_return(status: 404, body: "AAA")
    # end

    scenario '' do
      puts "---------"
      puts Net::HTTP.get("/books", "/")
      puts Net::HTTP.get_response("/books", "/").code
      puts "---------"

      puts "---------"
      visit books_path
      puts page.current_path
      expect(page).to have_http_status(200)
      puts "---------"
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
