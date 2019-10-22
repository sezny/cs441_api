class Event < ApplicationRecord
    searchkick
    has_and_belongs_to_many :users, optional: true
    has_and_belongs_to_many :permissions, optional: true
end
