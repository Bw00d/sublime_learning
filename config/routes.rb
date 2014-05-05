SublimeLearning::Application.routes.draw do

	root to: 'lessons#landing'
	get "lessons/thats_all"

  resources :lessons, except: [:new]

end
