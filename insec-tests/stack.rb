describe service('tomcat7') do
 it { should be_enabled }
 it {should be_installed }
 it {should be_running }
end

describe service('mysql') do
 it { should be_enabled }
 it {should be_installed }
 it {should be_running }
end


describe port(8080) do
 it { should be_listening }
 its('process') {should include 'tomcat'}
end 

#describe http('http://10.1.1.34:8080/MyAppDemo') do
# its('status')  { should cmp 200 }
#end
