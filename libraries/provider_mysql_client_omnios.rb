require 'chef/provider/lwrp_base'

class Chef
  class Provider
    class MysqlClient
      class Omnios < Chef::Provider::MysqlClient
        provides :mysql_client, platform: 'omnios'

        def packages
          %w(database/mysql-55 database/mysql-55/library)
        end
      end
    end
  end
end
