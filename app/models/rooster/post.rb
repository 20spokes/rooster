class Rooster::Post < ActiveRecord::Base
  has_many :blocks, as: :blockable

  enum state: [ :draft, :published, :archived ]

  accepts_nested_attributes_for :blocks, 
    reject_if: proc { |attributes| attributes['content'].blank? }
end
