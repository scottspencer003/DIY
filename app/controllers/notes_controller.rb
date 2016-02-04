class NotesController < ApplicationController

	def new
		@notes = Note.new
	end	


end
