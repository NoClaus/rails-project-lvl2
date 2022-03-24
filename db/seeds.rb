# frozen_string_literal: true

PostCategory.delete_all
10.times do
  PostCategory.create(name: Faker::IndustrySegments.sector)
end
