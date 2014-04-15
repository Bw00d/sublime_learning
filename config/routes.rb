SublimeLearning::Application.routes.draw do

	root to: 'lessons#landing'
	
  resources :lessons

  get "lessons/:number" => "lessons#show", :as => "lessons/number"
 
  

end
