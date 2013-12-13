class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create

  	user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
	if user == false || user.nil?
		#user doesn't exist!
		# redirect_to new_session_path,
		# render text: "it didnt work"
		redirect_to new_session_path, flash: { alert: "Incorrect email/password" }
	else
		# #we found a user: does the provided password match?
		# user = user.try(:authenticate, params[:session][:password])
		# if user == false || user.nil?
		# 	#password doesn't match! :(
		# 	# redirect_to new_session_path,
		# 	flash[:alert] = 'Incorrect password.'
		# else
		# 	#log_in function from our SessionsHelper!
		    # render text: "it worked"
			log_in user
			redirect_to users_path
		# end
	end
  end

  def destroy
  	log_out
	redirect_to new_session_path
  end
end
