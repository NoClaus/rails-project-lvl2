# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :post_category, inverse_of: :posts
  belongs_to :user
  has_many :post_comments, dependent: :destroy
end
