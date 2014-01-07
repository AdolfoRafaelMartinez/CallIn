# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CallIn_session',
  :secret      => 'b689685a6e25cee2e273a35a1a3648e77f135a6cd4651477854eb38113dae9fc9045d1dcce2ccb3492fc1fb91657f26f843d3384c5d0d26665b721fd2e8e0724'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
