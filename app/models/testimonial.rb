class Testimonial < ActiveRecord::Base

  mount_uploader :image, TestimonialUploader
end
