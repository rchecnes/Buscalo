class Department < ActiveRecord::Base
 has_many :publication

 has_many :province

 belongs_to :country
end
