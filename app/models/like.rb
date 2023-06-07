class Like < ApplicationRecord
    validates :liker_id, uniqueness: { scope: :chrip_id }
    
    belongs_to :liker,
        primary_key: :id,
        foreign_key: :liker_id
        class_name: :User

    belongs_to :chirp

end
