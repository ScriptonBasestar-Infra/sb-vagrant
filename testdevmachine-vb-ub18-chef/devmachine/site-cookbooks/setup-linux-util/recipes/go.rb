apt_repository 'go ppa' do
    uri          'ppa:gophers/archive'
end

apt_package %w(golang-1.10-go) do
    action :install
end
