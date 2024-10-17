This course is new so if some things aren't exactly perfect then => ratio.
Computer Networking = Linking computers together so they can exchange data. It is comprised of :
- Hardware
- Protocols
- Encoding norms

The main idea of computer networking is that two hosts that want to communicate don't have to be directly linked together (unlike landline phones for example). This is achieved with packets : an encapsulation of a piece of data containing a header with the identity of the wanted recipient and the data that is being sent.

Two models of computer networking exist OSI and TCP/IP.
These models outline the different levels of encapsulation and encoding of data at each step or layer of the technology stack.

### OSI MODEL

| **Application Layer**  |
| ---------------------- |
| **Presentation Layer** |
| **Session Layer**      |
| **Transport Layer**    |
| **Network Layer**      |
| **Link Layer**         |
| **Physical Layer**     |

##### Physical Layer
The actual cables being plugged in to pieces of hardware, transmits binary data in zeroes and ones with the presence and absence of light or varying levels of current.
##### Link Layer
Communication between two devices that are adjacent in the network like your phone and the router (directly linked by a physical connection like an ethernet cable). The protocol for this layer is: Ethernet.

##### Network Layer
Communication between different networks -> your router talking to another router. The protocols for this layer are IPV4 and IPV6.

##### Transport Layer
The main issue of transmitting packets is that the information you wnat to send to another host often doesnt fit on a single packet. A whole part of the stack is this transport layer that takes care of establishing and maintaining a connection with another host, reordering packets, checking for data corruption in recieved packets, etc. The protocols for this layer are UDP and TCP.

It is worth noting that we refer to the model as a stack because layers on the lower part of the stack dont care at all about how layers higher than it work. The layers can be modified, duplicated or even removed without necessarily compromising the whole model.

It is worth noting that we refer to the model as a stack because layers on the lower part of the stack dont care at all about how layers higher than it work. The layers can be modified, duplicated or even removed without necessarily compromising the whole model.

The last three layers of the stack will be explained in the sequel to this class: Networking Elements 2.

We will be constructing networks in this class and all of this will be easier to understand then...

twisted pair cable = ethernet cable
switch = powerstrip for data

