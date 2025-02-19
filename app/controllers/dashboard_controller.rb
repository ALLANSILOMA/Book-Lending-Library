class DashboardController < ApplicationController
  def index
    @total_books = Book.count
    @total_borrowings = Borrowing.count
    @current_borrowings = Borrowing.where(returned_at: nil).count
    @recent_books = Book.order(created_at: :desc).limit(5)
    @recent_borrowings = Borrowing.order(borrowed_at: :desc).limit(5).includes(:book)
  end
end

