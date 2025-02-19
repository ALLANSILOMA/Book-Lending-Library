class Borrowing < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :borrower_name, presence: true
  validates :borrowed_at, presence: true
  validate :return_date_after_borrow_date

  private

  def return_date_after_borrow_date
    return if returned_at.blank? || borrowed_at.blank?

    if returned_at < borrowed_at
      errors.add(:returned_at, "must be after the borrowed date")
    end
  end
end

