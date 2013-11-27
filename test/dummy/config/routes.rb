Rails.application.routes.draw do

  mount OpenIDArStore::Engine => "/openid_ar_store"
end
