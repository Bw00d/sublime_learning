SublimeLearning::Application.routes.draw do

	root to: 'lessons#landing'

  resources :lessons
  
 
  

end
