class CatRentalRequest < ActiveRecord::Base
  validates :end_date, :start_date, :cat_id, :status, presence: true
  validate :does_not_overlap_approved_request


  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    CatRentalRequest
      .where.not(id: self.id)
      .where(cat_id: cat_id)
      .where(<<-SQL, start_date: start_date, end_date: end_date)
        NOT( (start_date > :end_date) OR (end_date < :start_date))
    SQL
  end

  def overlapping_approved_requests
    self.overlapping_requests.where(status: :APPROVED)
  end

  def does_not_overlap_approved_request
    if self.overlapping_approved_requests.exists?
      self.status = "DENIED"
      # errors[:base] << "there are overlapping approved requests!"
    end
  end
end
