# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  picture     :text
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string(255)
#

class Picture < ActiveRecord::Base
  attr_accessible :picture, :description, :user_id, :name, :remote_picture_url

  mount_uploader :picture, PictureUploader

  belongs_to :user
  has_many :favourites

  validates :picture, :presence => true

end
