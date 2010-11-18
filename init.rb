require 'query_trace'

class ::ActiveRecord::ConnectionAdapters::AbstractAdapter
  if  ActiveRecord::Base.connection.instance_variable_get("@config")[:query_trace]
    include QueryTrace
  end
end

