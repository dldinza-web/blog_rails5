class Comment < ApplicationRecord
  validates :commenter, :body, :article_id, presence: true

  belongs_to :article
end
