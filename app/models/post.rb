class Post < ActiveRecord::Base
  attr_accessible :name, :text
end
# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  text       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

