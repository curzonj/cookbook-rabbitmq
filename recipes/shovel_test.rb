rabbitmq_plugin 'rabbitmq_shovel'

rabbitmq_vhost 'my_vhost'

rabbitmq_user 'fred' do
  action [ :add, :set_permissions, :set_user_tags ]
  vhost 'my_vhost'
  password 'secret'
  permissions'".*" ".*" ".*"'
  user_tag 'administrator'
end
