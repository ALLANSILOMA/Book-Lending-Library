class BorrowingsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @borrowing = @book.borrowings.new(borrowing_params)
    @borrowing.borrowed_at = Time.current

    if @borrowing.save
      redirect_to @book, notice: 'Book was successfully borrowed.'
    else
      redirect_to @book, alert: 'Error borrowing book.'
    end
  end

  def update
    @borrowing = borrowing.find(params[:id])
    @borrowing.returned_at = Time.current

    if @borrowing.save
      redirect_to @borrowing.book, notice: 'Book was successfully returned.'
    else
      redirect_to @borrowing.book, alert: 'Error returning book.'
    end
  end

  def borrower_history
    @borrowings = borrowing.where(borrower_name: params[:borrower_name]).includes(:book)
  end

  private

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name)
  end
end

