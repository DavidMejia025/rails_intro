class Chapter < ApplicationRecord
  belongs_to :book
  has_many :sentences

  accepts_nested_attributes_for :sentences
end
