Shindo.tests('Fog::Rackspace::Queues | queues', ['rackspace']) do

  pending if Fog.mocking?

  service = Fog::Rackspace::Queues.new(:rackspace_queues_client_id => 'test_client')
  options = {
    :name => "fog_instance_#{Time.now.to_i.to_s}",
  }
  collection_tests(service.queues, options, false)
end
