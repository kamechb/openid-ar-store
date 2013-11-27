module OpenIDArStore
  class Nonce < ActiveRecord::Base
    self.table_name = 'open_id_nonces'
  end
end
