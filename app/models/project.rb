class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :admin

  scope :most_recent, -> { order(published_at: :asc).limit(3)}
  scope :published, -> { where published: true }

  def publish
    update(published: true, published_at: Time.now)
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
