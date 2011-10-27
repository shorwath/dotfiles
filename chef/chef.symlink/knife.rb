opscode_user = ENV['OPSCODE_USER'] || 'shorwath'
orgname      = ENV['ORGNAME'] || "ign"
cookbooks    = ENV['COOKBOOKS'] || 'shorwath-cookbooks'
aws_keyring  = ENV['AWS'] || 'gamespy-tech'

log_level               :info
log_location            STDOUT
node_name               "#{opscode_user}"
client_key              "#{ENV['HOME']}/.chef/private-pems/#{opscode_user}.pem"
validation_client_name  "#{orgname}-validator"
validation_key          "#{ENV['HOME']}/.chef/private-pems/#{orgname}-validator.pem"
chef_server_url         "https://api.opscode.com/organizations/#{orgname}"
cache_type              'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path           [ "#{ENV['HOME']}/projects/cookbooks/#{cookbooks}/cookbooks", "#{ENV['HOME']}/projects/cookbooks/#{cookbooks}/site-cookbooks" ]
