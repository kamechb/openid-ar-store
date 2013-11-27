Rails.application.routes.draw do

  mount OpenidArStore::Engine => "/openid_ar_store"
end
