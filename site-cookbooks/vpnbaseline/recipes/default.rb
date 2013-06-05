# useful tools
package 'screen'

# install std ruby (for openvpn)
package 'ruby'

# iptables for openvpn default gateway nat

simple_iptables_rule "default" do
  table "nat"
  direction "POSTROUTING"
  rule [ "-s 10.8.0.0/16 -o eth0 -j MASQUERADE" ]
  jump false
end
