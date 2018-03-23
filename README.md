# DSM
Distributed Shared Memory Manager with Sequential Consistency

Basic Concept:
Here we are using Ricart Agrawala to acquire locks for the different files in the distributed system protocol. Here the client only communicates to its local server, which in turn communicates to other servers in the network. The server acts as both a server to its client and a client to other servers to parse and send requests. The MSI protocol is being used.
How to execute:
There are ‘N’ txt files for ‘N’ number of nodes. 3 txt files have been attached along with the submission.
Just like the previous execution, the node running the terminal will have its IP right at the end of the list.
The commands to be executed follows the IP list and the file ends with ‘END’ to indicate the end of the file.
Server terminal: ./DSM_server
Client terminal: ./DSM_client <NodeNumber>

PS: the files should be named as <NodeNumber>.txt
