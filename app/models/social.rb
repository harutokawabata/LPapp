class Social < ApplicationRecord
        belongs_to :user
        enum snstype: {
        twitter: 0,
        facebook: 1,
        line: 2,
        tiktok: 3,
        youtube: 4,
        instagram: 5,
        blog: 6
    }
end
