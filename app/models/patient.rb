class Patient < ApplicationRecord
    enum gender: {'Male': 0, 'Female': 1, 'Other': 2}
    enum blood_group: { 'A+':0, 'A-':1,'B+':2, 'B-':3, 'O+':4, 'O-':5,'AB+':6, 'AB-':7 }
    enum marital_status: {'Single': 0, 'Married': 1, 'Widowed': 2, 'Divorced': 3, 'Seperated': 4}
    validates :mobile_number,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 } 
    validates :first_name, :last_name,:date_of_birth, :diagnosis,:presence=>true               
    def full_name
        [first_name, last_name].compact.join(' ')
    end                  
    before_create :set_op_number
    private
    def set_op_number
        number = SecureRandom.random_number(10000)
        new_op_number = "OP#{number}"
        self.op_number = new_op_number
    end
end
