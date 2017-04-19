class CatRentalRequest < ActiveRecord::Base
  validates :status, inclusion: { in: ['PENDING', 'APPROVED'], message: "Invalid status" }
  validates :cat_id, :start_date, :end_date, :status, presence: true

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    # overlap_start = CatRentalRequest.where.not(["end_date <= ?", self.start_date]).to_a
    # overlap_end = CatRentalRequest.where.not(["start_date >= ?", self.end_date]).to_a
    #
    # (overlap_start + overlap_end).uniq

    one = CatRentalRequest.where(["? > start_date and ? < start_date"])
  end

  def okay_req

  end
end
