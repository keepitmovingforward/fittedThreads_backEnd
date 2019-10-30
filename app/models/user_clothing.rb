class UserClothing < ApplicationRecord

  belongs_to :user
  belongs_to :clothing
  belongs_to :size

end
