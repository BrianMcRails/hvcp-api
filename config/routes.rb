Rails.application.routes.draw do



  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :demographics do
          resources :dicom_studies do
            resources :dicom_series do
              resources :dicom_images
            end
          end
        end
      end
    end
  end
end
