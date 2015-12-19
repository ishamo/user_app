Rails.application.routes.draw do

	resources :users do
		resources :weibos
	end
end
