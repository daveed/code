class Person < ApplicationRecord
  belongs_to :parent, class_name: 'Person', required: false
  has_many :children, class_name: 'Person', foreign_key: :parent_id
  has_many :grandchildren, class_name: 'Person', through: :children, source: :children
end
