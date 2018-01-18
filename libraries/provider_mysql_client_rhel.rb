require 'chef/provider/lwrp_base'

class Chef
  class Provider
    class MysqlClient
      class Rhel < Chef::Provider::MysqlClient
        provides :mysql_client, platform: %w{rhel amazon redhat centos oracle scientific}

        def packages
          %w(mysql mysql-devel)
        end
      end
    end
  end
end
