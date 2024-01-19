class Todo < ApplicationRecord
  has_many :todo_categories, dependent: :destroy
  has_many :todo_tags, dependent: :destroy
  has_many :attachments, dependent: :destroy

  belongs_to :user

  enum priority: %w[low medium high], _suffix: true
  enum recurrence: %w[none daily weekly monthly], _suffix: true
  enum status: %w[active completed deleted], _suffix: true

  # validations

  # end for validations

  class << self
  end
end
