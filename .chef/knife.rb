# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "danielladd"
client_key               "#{current_dir}/danielladd.pem"
validation_client_name   "dladd-validator"
validation_key           "#{current_dir}/dladd-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/dladd"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor] = "C:\\progra~2\\notepa~1\\notepad++.exe -nosession -multiInst"