class Article < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: {minimum:6, maximum:255}
end