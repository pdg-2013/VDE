if node[:rails][:db_type] == "mysql"
  include_recipe "rails::mysql"
elsif node[:rails][:db_type] == "postgresql"
  include_recipe "rails::postgresql"
else
  raise "A valid db_type should be selected"
end
