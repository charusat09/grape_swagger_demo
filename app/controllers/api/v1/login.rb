module API
	module V1
		class Login < Grape::API
		  format :json
		  desc 'End-points for the Login'
		  namespace :login do
		    desc 'Login via email and password'
		    params do
		      requires :email, type: String, desc: 'email'
		      requires :password, type: String, desc: 'password'
		    end
		    post do
		      user = User.find_by_email(params[:email])
			  if user.present? && user.valid_password?(params[:password])
			  	# token = user.authentication_tokens.valid.first || AuthenticationToken.generate(user)
			  	if user.authentication_tokens.count > 0
			  		token = user.authentication_tokens.first
			  		puts "user email id is #{user.email} and token is #{token.token}"
			  	else
			  		generate_token = {:user_id => user.id, :token => SecureRandom.hex}
			  		token = AuthenticationToken.create(generate_token)
			  		puts "user email id is #{user.email} and token is #{token.token}"
			  	end
			  	
  				status 200
  				present "user email id is #{user.email} and token is #{token.token}"
			  else
			  	SecureRandom.hex
			    error_msg = 'Bad Authentication Parameters'
			    error!({ 'error_msg' => error_msg }, 401)
			  end
		    end
		  end
		end
	end
end