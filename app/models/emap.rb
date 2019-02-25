class Emap < ApplicationRecord
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  #after_validation :geocode, if: ->(obj){ obj.address_changed? }
  after_validation :geocode, :if => :address_changed?

  private

  def address_changed?
    address.present? && address_changed?
  end

  def coords_changed?
    latitude.present? &&
    longitude.present? &&
    latitude_changed? &&
    longitude_changed?
  end

end
