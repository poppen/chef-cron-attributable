#
# Cookbook Name:: cron-attributable
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'cron'

node['cron_d'].each do |name, cron|
  minute = cron['minute'] || nil
  hour = cron['hour'] || nil
  day = cron['day'] || nil
  month = cron['month'] || nil
  weekday = cron['weekday'] || nil
  predefined_value = cron['predefined_value'] || nil
  command = cron['command'] || nil
  user = cron['user'] || nil
  mailto = cron['mailto'] || nil
  path = cron['path'] || nil
  home = cron['home'] || nil
  shell = cron['shell'] || nil

  cron_d name do
    minute minute
    hour hour
    day day
    month month
    weekday weekday
    predefined_value predefined_value
    command command
    user user
    mailto mailto
    path path
    home home
    shell shell
  end
end
