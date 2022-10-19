class Article < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :author
  belongs_to :category
  validates :name, :content, presence: { message: 'Required' }, on: :create
  validates :content, uniqueness: true, on: :update
  validates_with ArticleContentValidator
end
