class Artist < ActiveRecord::Base

  has_many   :reviews
  belongs_to :category, optional: true

end
