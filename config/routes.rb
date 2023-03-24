# frozen_string_literal: true

ItePortalApi::Application.routes.draw do
  namespace :claims do
    resources :master_claims, only: %i[index]
    resources :master_clients, only: %i[index]
  end
end
