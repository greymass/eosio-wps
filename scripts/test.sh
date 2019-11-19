#!/bin/bash

# init
cleos -v push action eosio.wps init '["2019-11-01T00:00:00"]' -p eosio.wps

# propose
cleos -v push action eosio.wps propose '["myaccount", "mywps2", "My WPS", "{\"category\": \"other\", \"region\": \"global\"}", "500.0000 EOS", 1]' -p myaccount

# transfer
cleos -v transfer myaccount eosio.wps "50.0000 EOS" "mywps"

# activate
cleos -v push action eosio.wps activate '["myaccount", "mywps"]' -p myaccount

# withdraw
cleos -v push action eosio.wps withdraw '["myaccount", "mywps"]' -p myaccount