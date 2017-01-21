class Post < ApplicationRecord
  def as_json(options = nil)
    super(only: [:id, :title, :created_at])
  end
end
