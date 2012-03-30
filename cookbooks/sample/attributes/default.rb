mycompany_customers({
    :bob => {
        :homedir => "/home/vagrant/bob",
        :webdir => "/home/vagrant/bob/web"
    },
    :tom => {
        :homedir => "/home/vagrant/tom",
        :webdir => "/home/vagrant/tom/web"
    }
})
default["myattribute"]["myvalue"] = "in ./attributes/default.rb"

# 書き方その1
default["pattern1"]["value1"] = "pattern1"
default["pattern1"]["value2"] = ["A", "B"]

# 書き方その2
node.default["pattern2"]["value1"] = "pattern2"
node.default["pattern2"]["value2"] = ["A", "B"]

# attributeファイル内で特定のアトリビュートが存在するかどうか
if attribute?(:pattern1)
    Chef::Log.info "exists!"
end

