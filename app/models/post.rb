class Post < ApplicationRecord
  # will prevent error to our models- must type something in order to submit a post, w/o a validates a post can be save w/o anything being typed
  belongs_to :user
  # when a post gets deleted so does the comment
  has_many :comments, dependent: :destroy
  validates_presence_of :title, :body, :user_id
end
