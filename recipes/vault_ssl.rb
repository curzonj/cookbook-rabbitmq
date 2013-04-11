ssl_keypair node.rabbitmq.fqdn do
  notifies :restart, "service[rabbitmq-server]"
  owner 'rabbitmq'
  group 'rabbitmq'
end

node[:rabbitmq][:ssl] = true
node[:rabbitmq][:ssl_cacert] = File.join(node.ssl.certificate_path, "#{node.rabbitmq.fqdn}.crt")
node[:rabbitmq][:ssl_cert] = File.join(node.ssl.certificate_path, "#{node.rabbitmq.fqdn}.crt")
node[:rabbitmq][:ssl_key] = File.join(node.ssl.key_path, "#{node.rabbitmq.fqdn}.key")
