class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :product

  enum status: { accepted: 'accepted', rejected: 'rejected' }

  def accept
    update(status: :accepted)
  end

  def reject
    update(status: :rejected)
  end
end
