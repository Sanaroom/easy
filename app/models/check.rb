class Check < ApplicationRecord
  with_options presence: true do
    validates :number 
    validates :attendance
  end



  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :number, numericality: { other_than: 1, message: "can't be blank" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :attendance, numericality: { other_than: 1, message: "can't be blank" }
end
