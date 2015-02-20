# this file contains basic commands that are called to limit the ingress bandwidth over an OVS interface in a mininet topology
# a basic 50Mb/s implementation of this would be for interface s1-eth1 (attached to switch s1 and making the way to host h1), where the rate is measured in bits would be by calling $./bandwidth_setup.sh 1 5000 500
# also for simply calling the command in mininet it would be
# mininet> s1 ovs-vsctl set interface s1-eth1 ingress_policing_rate=50000
# mininet> s1 ovs-vsctl set interface s1-eth1 ingress_policing_burst=5000
# for testing use the iperf command in mininet or install and use nperf

echo "s1 ovs-vsctl set interface s1-eth$1 ingress_policing_rate=$2"
echo "s1 ovs-vsctl set interface s1-eth$1 ingress_policing_burst=$3"