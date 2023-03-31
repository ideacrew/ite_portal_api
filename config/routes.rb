# frozen_string_literal: true

ItePortalApi::Application.routes.draw do
  namespace :claims do
    resources :master_claims, only: %i[index show]
    resources :master_clients, only: %i[index show] do
      collection do
        get 'claim_history'
      end
    end
  end
end
