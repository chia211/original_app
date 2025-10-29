class Memo < ApplicationRecord
  
  belongs_to :profile
  belongs_to :vital_sign, optional: true

end
