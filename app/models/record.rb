class Record < ApplicationRecord
  belongs_to :prodcut
  has_many :defects
end
