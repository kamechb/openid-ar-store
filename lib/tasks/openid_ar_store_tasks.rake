desc 'GC OpenID store, deleting expired nonces and associations'
task :gc_openid_store => :environment do
  store = OpenIDArStore::ActiveRecordStore.new
  nonces = store.cleanup_nonces
  associations = store.cleanup_associations
  puts "Deleted nonces #{nonces}, associations #{associations}."
end
