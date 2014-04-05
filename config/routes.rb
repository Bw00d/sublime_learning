SublimeLearning::Application.routes.draw do
	match('table-of-contents', {via: :get, to: 'lessons#index'})

  match('lessons', 		 	     { via: :get,  to: 'lessons#welcome' })
  match('lessons', 			     { via: :post, to: 'lessons#create' })
  match('lessons/admin',     { via: :get,  to: 'lessons#admin' })
  match('lessons/admin/edit', { via: :get, to: 'lessons#edit_index' })
  match('lessons/:id', 	     { via: :get,  to: 'lessons#show' })
  match('lessons/:id', 			 { via: [:patch, :put], to: 'lessons#update' })
  match('lessons/:id/edit',  { via: :get,  to: 'lessons#edit' })
  

end
