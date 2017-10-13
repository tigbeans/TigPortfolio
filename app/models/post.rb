class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :admin

  def display_day_published
    if published_at.present?
      "Published #{published_at.strftime('%-b %-d, %Y')}"
    else
      "Not Published."
    end
  end

  def publish
    update(published: true, published_at: Time.now)
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
