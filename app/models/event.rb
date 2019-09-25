class Event < ApplicationRecord
    searchkick
    belongs_to :user
end
