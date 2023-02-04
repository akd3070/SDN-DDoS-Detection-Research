# Sparrow
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
# Dependencies #

```sudo apt-get update

$ sudo apt-get upgrade

$ sudo apt-get install git

$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev  libncursesw5-dev xz-utils tk-dev

$ sudo apt-get install python3.8

$ sudo alias python = python3

$ sudo apt-get install python-tk
```
# Installing Mininet #
```$ git clone https://github.com/mininet/mininet.git
  $ cd mininet
  $ git tag
  $ git checkout -b 2.2.0b3    #Less bugs
  $ ~/mininet/util/install.sh -a
                     
                     #C0ngratulati0ns#


