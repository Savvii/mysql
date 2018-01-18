require 'chef/provider/lwrp_base'

class Chef
  class Provider
    class MysqlClient
      class FreeBSD < Chef::Provider::MysqlClient
        provides :mysql_client, platform: 'freebsd'

        def packages
          %w(mysql55-client)
        end
      end
    end
  end
end
