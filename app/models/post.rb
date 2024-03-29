class Post < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 3 }
  validates :content, presence: true

  include Sluggable

  def as_json(options = nil)
    super(only: [:id, :title, :created_at])
  end
end
