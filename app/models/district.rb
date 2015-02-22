class District < ActiveRecord::Base
 has_many :publication

 belongs_to :province
end
