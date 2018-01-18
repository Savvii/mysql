require 'chef/provider/lwrp_base'

class Chef
  class Provider
    class MysqlClient
      class Fedora < Chef::Provider::MysqlClient
        provides :mysql_client, platform: 'fedora'

        def packages
          %w(community-mysql community-mysql-devel)
        end
      end
    end
  end
end
