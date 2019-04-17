class PemakaiController < ApplicationController
	def pemakai_params
	  params.require(:pemakai).permit(:nama, :email, :password, :password_confirmation, :fungsi)
	end
end