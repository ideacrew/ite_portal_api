# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
ItePortalApi::Application.config.secret_key_base = 'a884b0cb56d7dafc064ba7f6769446ecd41eb977771378929eff8117cd64db65bd71b3c6dc8473ef3be61748e1f6e5f8ea0683e95383e9809fdcdbb9bb753a8b'
