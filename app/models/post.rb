# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :post_category, inverse_of: :posts
end
