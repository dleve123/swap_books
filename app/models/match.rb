class Match < ActiveRecord::Base
  belongs_to :buyer, class_name: 'User'
  belongs_to :seller, class_name: 'User'
  belongs_to :book

  default_scope { where(completed: false) }
  scope :waiting_for_buyer, -> { where(buyer_id: nil) }

  before_save :update_status

  def update_status
    # TODO: buyer_id.present? is most likely not necessary
    if buyer_id_changed? && buyer_id.present?
      self.completed = true
    end
  end
end
