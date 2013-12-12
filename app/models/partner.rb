class Partner < ActiveRecord::Base

  before_save :default_values
  CATEGORIES = ["Telecom Operators", "Media Partner", "Other"]

mount_uploader :image, PartnerImageUploader

  def default_values
    self.category ||= 'Other'
  end
end
