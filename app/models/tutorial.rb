class Tutorial < ActiveRecord::Base
  attr_accessible :name, :author, :program, :create_date, :link, :type, :author_id, :program_id


  belongs_to :author
  has_and_belongs_to_many :programs


end
