class Check < ApplicationRecord
  with_options presence: true do
    validates :number , numericality: { other_than: 1 , message: "can't be blank"} 
    validates :attendance
  end



  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :number
end
