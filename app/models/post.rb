# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  tittle     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord

	belongs_to :user
	has_many :comments

validates :body, presence: true
validates :tittle, presence: true



end
