# frozen_string_literal: true

ItePortalApi::Application.routes.draw do
  devise_for :users
  namespace :claims do
    resources :master_claims, only: %i[index show] do
      collection do
        get 'advanced_search'
        get 'provider_types'
        get 'procedure_codes'
      end
    end
    resources :master_clients, only: %i[index show] do
      collection do
        get 'claim_history'
      end
    end
  end
end
