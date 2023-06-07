# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  username              :string           not null
#  email                 :string           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  age                   :integer
#  political_affiliation :string
#
class User < ApplicationRecord
    validates :username, :email, presence: true, uniqueness: true

    has_many :chirps,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Chirp,
        dependent: :destory
    
    has_many :likes,
        primary_key: :id
        foreign_key: :likes_id
        class_name: :likes


end
