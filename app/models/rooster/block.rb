class Rooster::Block < ActiveRecord::Base
  belongs_to :blockable, polymorphic: true
end
