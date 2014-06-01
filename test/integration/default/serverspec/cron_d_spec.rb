require 'serverspec'

include Serverspec::Helper::Ssh
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Exec

describe file('/etc/cron.d/daily-usage-report') do
  it { should be_file }
  its(:content) { should match(/0 23 \* \* \* appuser \/srv\/app\/scripts\/daily_report/) }
end
