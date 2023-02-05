# Sparrow #
Software-defined networking (SDN) technology enables for dynamic, programmatically effective network design to boost network performance and monitoring, which makes network administration more like cloud computing than traditional network management. SDN is meant to address the static design of traditional networks. SDN separates the routing mechanism from the forwarding of network packets (data plane) in an effort to consolidate network intelligence into a single network component (control plane). The control plane, which is thought of as the central processing unit (CPU) of the SDN network and contains all of the network's intelligence, is made up of one or more controllers. The main issue with SDN is that centralization has drawbacks for security, scalability, and flexibility on its own.

The OpenFlow protocol, which is used to decide the flow of network packets across network switches by communicating remotely with network plane elements, has been connected to SDN regularly since it was first introduced in 2011. However, as of 2012, private systems have begun use the expression. These include the Open Network Environment from Cisco Systems and the Nicira network virtualization technology.
## Concept ##
The underlying infrastructure may be isolated from network services and applications and made directly programmable since network control and forwarding functions are separated in SDN systems.

The OpenFlow protocol can be used in SDN technologies. The SDN architecture is: 

**01. Directly programmable:** Network control is directly programmable because it is decoupled from forwarding functions.
   
**02. Agile:** Abstracting control from forwarding lets administrators dynamically adjust network-wide traffic flow to meet changing needs.
    
**03. Centrally managed:** Network intelligence is (logically) centralized in software-based SDN controllers that maintain a global view of the network, which appears to applications and policy engines as a single, logical switch.
    
**04. Programmatically configured:** SDN lets network managers configure, manage, secure, and optimize network resources very quickly via dynamic, automated SDN programs, which they can write themselves because the programs do not depend on proprietary software.
    
**05. Open standards-based and vendor-neutral:** When implemented through open standards, SDN simplifies network design and operation because instructions are provided by SDN controllers instead of multiple, vendor-specific devices and protocols.
   
## How to Install Mininet ##

### Dependencies ###

```sudo apt-get update```

``` sudo apt-get upgrade```

```sudo apt-get install git```

```sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev  libncursesw5-dev xz-utils tk-dev```

```sudo apt-get install python3.8```

```sudo apt install python-is-python3```

```sudo alias python = python3```

```sudo apt-get install python-tk```

# Installing Mininet #
```git clone https://github.com/mininet/mininet.git```

  ```cd mininet```
  
  ```git tag```
  
  ```git checkout -b 2.2.0b3    #Less bugs```
  
  ```~/mininet/util/install.sh -a```
                     
                     # C0ngratulati0ns #
                     
## OpenFlow ##

OpenvSwitch

Traditionally, networking hardwares from different vendors often have special configuration and management systems, which limits the interacting between routers and switches from different manufacturers. To solve this, OpenFlow is created as an open programmable network protocol for configuring and managing Gigabit network switches from various vendors. It enables us to offload the control plane of all the switches to a central controller and lets a central software define the behavior of the network. Thus network administrators can use OpenFlow software to manage and control traffic flow among different branded switching equipments.

# Working #

OpenFlow generally consists of three components: OpenFlow controller, OpenFlow protocol and a chain of flow tables set up on the OpenFlow switch (as shown above). The OpenFlow protocol is like a media for the controller talking securely with OpenFlow switch. The OpenFlow controller can set rules about the data-forwarding behaviors of each forwarding device through the OpenFlow protocol. Flow tables installed on the switch often stores a collection of flow entries. So when a data packet arrives at the OpenFlow switch, the switch will search for matched flow entries in the flow tables and executes corresponding actions. If no match is found, an inquiry event will sent to the OpenFlow controller which then responds with a new flow entry for handling that queued packet.

## OpenvSwitch ##

OpenvSwitch, sometimes abbreviated as OVS, is an open-source OpenFlow switch that works as a virtual switch in the virtualized environments such as KVM. It also used as a multilayer software for interconnecting virtual devices in the same host or between different hosts. Currently, OpenvSwitch can run on any Linux-based virtualization platform, which includes: KVM, VirtualBox, Xen, Xen Cloud Platform, XenServer.

# Working #

OpenvSwitch has eight core elements: ovs-vswitchd, Linux kernel module, ovsdb-server, ovs-dpctl, ovs-vsctl, ovs-appctl, ovs-ofctl, and ovs-pki. Ovs-vswitchd is a daemon that implements the switch. Linux kernel module is for flow-based switching. Ovsdb-server is a lightweight database server. Ovs-dpctl is a tool for configuring the switch kernel module. Ovs-vsctl is a utility for querying and updating the configuration of ovs-vswitchd. Ovs-appctl is a utility that sends commands to running Open vSwitch daemons. Ovs-ofctl is a utility for controlling the OpenFlow features of OVS. Ovs-pki is a utility for creating and managing the public-key infrastructure.

## OpenvSwitch vs OpenFlow: What’s Their Relationship? ##

OpenvSwitch and OpenFlow are both used for SDN application. OpenFlow is one of the first SDN standards. OpenvSwitch is an OpenStack SDN component. As to their relationship, OpenvSwitch is one of the most popular implementations of OpenFlow. Apart from OpenFlow, OpenvSwitch also supports other switch management protocols such as OVSDB (Open vSwitch Database Management Protocol).

## OpenFlow Limitations ##

As OpenFlow remains in a state of rapid evolution, it is difficult to pin down precise limitations, as these may be addressed in subsequent releases. One limitation is that the currently defined match fields are limited to the packet header. Thus, deep packet inspection (DPI), whereby fields in the packet’s payload may be used to distinguish flows, is not supported in a standard OpenFlow. Nonetheless, the EXPERIMENTER modes that are permitted within OpenFlow do open the way for such application layer flow definition in the future. Second, some OpenFlow abstractions may be too complex to implement directly in today’s silicon. This is unlikely to remain an insurmountable obstacle for long, however, since the tremendous momentum behind SDN is likely to give birth to switching chips that are designed explicitly to implement even OpenFlow’s most complicated features.

If we cast a wider net and consider limitations of all of Open SDN, there are a number of other areas to consider.

## Open vSwitch Limitations ##

*Lacks stability – Open vSwitch has some stability problems such as Kernetl panics, ovs-switched segfaults, and data corruption.

*Complex operation – Open vSwitch itself is a complex solution, which owns so many functions. It is hard to learn, install and operate.


