module MyExampleLibrary
    def my_function()
        # ログを出力
        Chef::Log.info 'my function!'
    end

    def print_node()
        Chef::Log.info node[:mycompany_customers]
    end

    def customer(name)
        node[:mycompany_customers][name]
    end

    def all_customers(&block)
        node[:mycompany_customers].each do |name, info|
            block.call(name, info)
        end
    end
end
