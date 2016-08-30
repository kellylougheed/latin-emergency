class Activity < ActiveRecord::Base
  validates :exercise, presence: true, length: { maximum: 300, minimum: 10 }
end
