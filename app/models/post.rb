class Post < ApplicationRecord
  # will prevent error to our models- must type something in order to submit a post, w/o a validates a post can be save w/o anything being typed
  # validates :title, presence: true, length: { minimum: 5 }
  # validates :body, presence: true
end
