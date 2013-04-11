monit 'rabbitmq-server' do
  pid '/var/run/rabbitmq/pid'
  port 5671
end
