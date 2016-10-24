module API
	module V1
		class Users < Grape::API
			include API::V1::Defaults
			# http_basic do |email, password|
		 #      user = User.find_by_email(email)
		 #      user && user.valid_password?(password)
		 #    end

		    before do
		      error!("401 Unauthorized", 401) unless authenticated
		    end
		 	helpers do 
		 		def authenticated
		 			params[:api_key] == "bacancy"
		 		end
		 	end
		    # helpers do
		    #   def authenticated
		    #   	raise params.inspect
		    #     user = User.find_by_email(params[:email])
		    #     user.valid_password?(params[:password])
		    #   end
		    # end
			desc "ALl User"
				get "user" do 
					User.all
				end
			desc "create User"
			params do 
				requires :email, :password, :password_confirmation
			end
			post "user" do
				ActiveRecord::Base::User.create(user_params)
			end

			desc "delete User"
				delete "user/:id" do
					ActiveRecord::Base::User.destroy(params[:id])
				end

			desc "show User"
				get "user/:id" do
					ActiveRecord::Base::User.find_by_id(params[:id])
				end

			desc "update User"
				params do 
					optional :email, :phone, :city, :password, :password_confirmation
				end
				put "user/:id" do
					ActiveRecord::Base::User.find_by_id(params[:id]).update_attributes(user_params)
				end

			helpers do
			    def user_params
			      ActionController::Parameters.new(params).permit(:email, :phone, :city, :password, :password_confirmation)
			    end
			end
		end
	end
end