class Rooster::Image < ActiveRecord::Base
  mount_uploader :asset, ImageUploader

  before_save :update_asset_attributes

  private

  def update_asset_attributes
    if asset.present? && asset_changed?
      self.file_type = asset.file.content_type
    end
  end
end
