class Book < ApplicationRecord
  has_many :user_books
  has_many :users, through: :user_books

  def self.search(query)
    client = Goodreads.new(api_key: Rails.application.credentials.goodreads[:key])
    client.search_books(query).results.work
  end

end
