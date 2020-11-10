class BooksController < ApplicationController

  def show
    begin
      @book = Book.lookup_book(params[:id])
    rescue
      flash[:alert] = "Invalid book"
      redirect_to me_path
    end
  end

  def search
    if params[:book].present?
      @results = Book.search_books(params[:book])
      respond_to do |format|
        format.js { render partial: 'books/search_results' }
      end
    else
      respond_to do |format|
        flash.now[:alert] = "Please enter a book to search"
        format.js { render partial: 'books/search_results' }
      end
    end
  end

end
