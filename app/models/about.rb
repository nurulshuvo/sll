class About < ActiveRecord::Base

  mount_uploader :image, AboutImageUploader
end
