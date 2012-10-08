class Program < ActiveRecord::Base
   attr_accessible :name, :developer, :version


   has_and_belongs_to_many :authors

   has_and_belongs_to_many :tutorials

end
