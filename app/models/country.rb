class Country < ActiveRecord::Base
 has_many :publication

 has_many :department
end
