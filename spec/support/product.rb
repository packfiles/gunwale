# frozen_string_literal: true

class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :rank, presence: true, uniqueness: true
  validates :description, format: {without: /invalid/i}
end
