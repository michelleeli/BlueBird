# == Schema Information
#
# Table name: chirps
#
#  id         :integer          not null, primary key
#  body       :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Chirp < ApplicationRecord
    validates :body, presence: true
    # validates :author_id, presence: true
        # author_id as foreign key already contains validation
    validate :body_too_long

    def body_too_long
        if body && body.length > 140
            self.errors.add(:body, "Too long")
        end 
    end 

    belongs_to :author_id,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User

    has_many :likes,
        dependent: :destroy
    
    has_many :liked_chirps,
        through: :likes,
        source: :liker

end
