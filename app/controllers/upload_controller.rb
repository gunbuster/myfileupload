class UploadController < ApplicationController
	def index
	end

	def save
		params[:Filedata].content_type = 
			MIME::Types.type_for(params[:Filedata].original_filename).to_s
		logger.info "Got a file: #{params.inspect}"

		render :json => { "status" => "success" }
	end
end
