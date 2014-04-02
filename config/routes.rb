CodeSite::Application.routes.draw do
  match('lessons', { :via => :get, :to => 'lessons#index'})
  match('lessons/new', { :via => :get, :to => 'lessons#new'})
  match('lessons/:id', { :via => :get, :to => 'lessons#show'})
  match('lessons/new', { :via => :post, :to => 'lessons#create'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'} )
  match('lessons/:id/edit', {:via => [:patch, :post], :to => 'lessons#update'} )
  match('lessons/:id', {:via => :delete, :to => 'lessons#destroy'} )

end
