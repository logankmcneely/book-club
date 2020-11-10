class Book < ApplicationRecord
  has_many :user_books
  has_many :users, through: :user_books

  def self.search_books(query)
    client = Goodreads.new(api_key: Rails.application.credentials.goodreads[:key])
    client.search_books(query).results.work
  end

  def self.lookup_book(query)
    client = Goodreads.new(api_key: Rails.application.credentials.goodreads[:key])
    client.book(query)
  end

end
