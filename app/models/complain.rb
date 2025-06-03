class Complain < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  enum complain_type: { annonymous: 0, citizen: 1 }

end
