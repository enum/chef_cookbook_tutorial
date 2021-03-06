module MyExampleLibrary
    def my_function()
        # ログを出力
        Chef::Log.info 'my function!'
    end

    def print_node(mynode)
        mynode.each do |name, info|
            Chef::Log.info "name:#{name}"
            Chef::Log.info "info:#{info}"
        end
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
