Rails.application.routes.draw do
  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :demographics
      end
    end
  end
end
