module OpenIDArStore
  class Nonce < ActiveRecord::Base
    self.table_name = 'open_id_nonces'

    attr_accessible :server_url, :timestamp, :salt
  end
end
