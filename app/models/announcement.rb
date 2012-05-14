class Announcement < ActiveRecord::Base
  belongs_to :user
  
  
  attr_accessible :postcode, :province, :title, :town, :user_id
end
# == Schema Information
#
# Table name: announcements
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  title      :string(255)
#  postcode   :integer
#  town       :string(255)
#  province   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

