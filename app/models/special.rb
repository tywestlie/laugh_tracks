class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :name, presence: true
  validates :comedian_id, presence: true
end
