class Attendance < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '出席' },
    { id: 2, name: '欠席' },
    { id: 3, name: 'ちこく' },
    

  ]

  include ActiveHash::Associations
  has_many :checks
  end