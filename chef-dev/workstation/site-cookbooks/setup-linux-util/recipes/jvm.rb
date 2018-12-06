inlclude_recipe 'default'

# ubuntu
package "openjdk-#{node['openjdk']['version']}-jdk" do
	options '--no-install-recommends'
end

# sdkman

search( :users, "shell:*zsh" ).each do |u|
    user_id = u["id"]
	execute 'install sdkman' do
		command 'curl -s "https://get.sdkman.io" | bash'
	end

	execute 'init' do
		command 'source "$HOME/.sdkman/bin/sdkman-init.sh"'
	end

	execute 'install devenv using sdkman' do
		command 'sdk i groovy && sdk i gradle && sdk i maven && sdk i sbt && sdk i kotlin && sdk i leiningen && sdk i scala'
	end
end