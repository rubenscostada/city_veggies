class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings 
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_country_and_city,
    against: [:name, :country ],
    using: {
      tsearch: { prefix: true }
    }

end
