class Project < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :attachment_one, :styles => { 
				:medium => "600x600>", 
				:thumb => "100x100>"
				 },

				 :default_url => "/images/:style/missing.png"

	validates_attachment_content_type :attachment_one,  
									  :content_type => /\Aimage\/.*\Z/
									  

end
