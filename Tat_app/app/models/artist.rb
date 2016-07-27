class Artist < ActiveRecord::Base

  has_many   :reviews
  belongs_to :category, optional: true
  validates_presence_of :name

  geocoded_by :full_address
  after_validation :geocode

  # def full_address
  #   [address1, address2, city, state, zipcode].join(', ')
  # end

  def full_address
  "#{address1}, #{address2}, #{city}, #{state} #{zipcode}"
end

  def self.search(params)
    # artists = Artist.where(category_id: params[:category].to_i)
    # artists = artists.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    artists = Artist.near(params[:location], 20) if params[:location].present?
    artists
  end

end

# Artist.near("Champs de Mars, Paris", 10, order: :distance)
