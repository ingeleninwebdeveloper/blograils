# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  tittle     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord

	belongs_to :user

validates :body, presence: true
validates :tittle, presence: true



end
