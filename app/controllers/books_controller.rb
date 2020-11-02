class BooksController < ApplicationController

  def search
    if params[:book].present?
      @results = Book.search(params[:book])
      respond_to do |format|
        format.js { render partial: 'books/search_results' }
      end
    else
      flash[:alert] = "Please enter a book to search"
      respond_to do |format|
        format.js { render partial: 'books/search_results' }
      end
    end
  end

end
