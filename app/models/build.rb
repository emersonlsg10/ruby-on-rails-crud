class Build < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5 }
    validates :id_build, presence: true
    validates :is_like, presence: true
end
