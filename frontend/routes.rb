ArchivesSpace::Application.routes.draw do
  resources :thesas
  match 'thesas/:id/delete' => 'thesas#delete', :via => [:post]
end
