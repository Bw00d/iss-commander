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
  match('missions/:id', { via: [:patch, :put], to: 'missions#update' })
  match('missions/:id/edit', { via: :get, to: 'missions#edit'})
  match('missions/:id', { via: :delete, to: 'missions#destroy'})

  match('crews', { via: :get, to: 'crews#index'})
  match('crews/new', { via: :get, to: 'crews#new' })
  match('crews', { via: :post, to: 'crews#create'})

  match('challenges',     { via: :get, to: 'challenges#index' })
  match('challenges',     { via: :post, to: 'challenges#create' })
  match('challenges/new',     { via: :get, to: 'challenges#new' })
  match('challenges/:id', { via: :get, to: 'challenges#show' })
  match('challenges/:id', { via: [:patch, :put], to: 'challenges#update' })
  match('challenges/:id/edit', { via: :get, to: 'challenges#edit'})
  match('challenges/:id', { via: :delete, to: 'challenges#destroy'})

  match('responses', { via: :post, to: 'responses#index' })


end
