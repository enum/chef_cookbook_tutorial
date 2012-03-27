module MyExampleLibrary
    def my_function()
        # ログを出力
        Chef::Log.info 'my function!'
    end

    def print_node()
        Chef::Log.info node[:mycompany_customers]
    end
end
