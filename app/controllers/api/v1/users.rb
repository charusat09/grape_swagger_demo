module API
	module V1
		class Users < Grape::API
			include API::V1::Defaults
			desc "ALl User"
				get "users" do 
					ActiveRecord::Base::User.all
				end
		end
	end
end