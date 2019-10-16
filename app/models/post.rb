class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"],
    message: "Category must be Fiction or Non-Fiction" } 
    validates :content, length: { minimum: 100}
end
