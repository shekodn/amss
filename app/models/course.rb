class Course < ActiveRecord::Base
     validates :typeOfEvent ,presence: true
     validates :price ,presence: true
     validates :premiumPrice ,presence: true
     validates :name ,presence: true
     validates :instructor ,presence: true
     validates :additionalInfo ,presence: true
     validates :sizeLimit ,presence: true
     validates :description ,presence: true

end
