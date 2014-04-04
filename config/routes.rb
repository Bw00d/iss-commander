IssGame::Application.routes.draw do
  match('issgame',        { via: :get, to: 'roles#index' })
  match('astronauts',     { via: :get, to: 'astronauts#index' })
  match('astronauts',     { via: :post, to: 'astronauts#create' })
  match('astronauts/new',     { via: :get, to: 'astronauts#new' })
  match('astronauts/:id', { via: :get, to: 'astronauts#show' })
  match('astronauts/:id', { via: [:patch, :put], to: 'astronauts#update' })
  match('astronauts/:id/edit', { via: :get, to: 'astronauts#edit'})
  match('astronauts/:id', { via: :delete, to: 'astronauts#destroy'})

  match('missions', { via: :get, to: 'missions#index'})
  match('missions', { via: :post, to: 'missions#create'})
  match('missions/new',     { via: :get, to: 'missions#new' })
  match('missions/:id', { via: :get, to: 'missions#show' })


end
