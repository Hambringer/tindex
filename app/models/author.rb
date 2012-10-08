class Author < ActiveRecord::Base
   attr_accessible :name, :website, :description, :programs, :program_ids

  has_many :tutorials
  has_and_belongs_to_many :programs


end
