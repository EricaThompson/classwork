# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING"), not null
#
class CatRentalRequest < ApplicationRecord
    validates :status, inclusion: { in: ['APPROVED', 'DENIED'] }
    validates :start_date, :end_date, :status, :cat_id, presence: true

    belongs_to :cat,
        foreign_key: :cat_id,
        class_name: :Cat

    def overlapping_requests
        
    end

end
