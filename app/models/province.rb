class Province < ActiveRecord::Base
 has_many :publication

 has_many :district

 belongs_to :department
end
