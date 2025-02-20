class BorrowingsController < ApplicationController
  before_action :set_book, only: [:create]

  def create
    @borrowing = @book.borrowings.new(borrowing_params)
    @borrowing.borrowed_at = Time.current

    if @borrowing.save
      redirect_to @book, notice: 'Book was successfully borrowed.'
    else
      redirect_to @book, alert: 'Error borrowing book.'
    end
  end

  def update
    @borrowing = Borrowing.find(params[:id])
    @borrowing.returned_at = Time.current

    if @borrowing.save
      redirect_to @borrowing.book, notice: 'Book was successfully returned.'
    else
      redirect_to @borrowing.book, alert: 'Error returning book.'
    end
  end

  def borrower_history
    @borrowings = Borrowing.where(borrower_name: params[:borrower_name]).includes(:book)
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name)
  end
end
