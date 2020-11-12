class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_name_country_and_city,
    against: [:name, :country ],
    using: {
      tsearch: { prefix: true }
    }
end
