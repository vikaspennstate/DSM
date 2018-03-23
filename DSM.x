struct initializationNode
{
 char ips[500];
 int nodeNum;
};

struct localNode
{
 char state;
 char fileName[20];  
 char IP[20];
 int offset;
 int outstandingReplies;
 int highestSeqNum;
 int requestStatus;
 char operation;
 int lockId;
};

struct ReqNode
{
	char IP[20];	    
	char data[1000];    
	char fileName[20];   
	char state;		    
	int seqNum;
	int nodeNum;
	bool bRequestingCS;
	int lockId;
	int resultCode;
};



program InitializeServer_PROG
{
version InitializeServer_VERS
{
int InitializeServer(initializationNode) = 1;
}=1;
}=0x23451111;

program GetMemPtr_PROG
{
version GetMemPtr_VERS
{
char GetMemPtr(localNode) = 1;
}=1;
}=0x23451112;

program GetLocalData_PROG
{
version GetLocalData_VERS
{
localNode GetLocalData(localNode) = 1;
}=1;
}=0x23451113;

program RecRep_PROG
{
version RecRep_VERS
{
ReqNode RecRep(ReqNode) = 1;
}=1;
}=0x23451114;

program GetAdd_PROG
{
version GetAdd_VERS
{
ReqNode GetAdd(ReqNode) = 1;
}=1;
}=0x23451115;

program SendAdd_PROG
{
version SendAdd_VERS
{
ReqNode SendAdd(ReqNode) = 1;
}=1;
}=0x23451116; 


program GetUpdates_PROG
{
version GetUpdates_VERS
{
ReqNode GetUpdates(ReqNode) = 1;
}=1;
}=0x23451117; 


program SendUpdates_PROG
{
version SendUpdates_VERS
{
ReqNode SendUpdates(ReqNode) = 1;
}=1;
}=0x23451118; 


program ReqCS_PROG
{
version ReqCS_VERS
{
localNode ReqCS(localNode) = 1;
}=1;
}=0x23451119;


program ReqCS1_PROG
{
version ReqCS1_VERS
{
localNode ReqCS1(localNode) = 1;
}=1;
}=0x23451120;


program RecReq_PROG
{
version RecReq_VERS
{
ReqNode RecReq(ReqNode) = 1;
}=1;
}=0x23451121;

program Dummy1_PROG
{
version Dummy1_VERS
{
localNode Dummy1(localNode) = 1;
}=1;
}=0x23451122;
program Dummy2_PROG
{
version Dummy2_VERS
{
char Dummy2(ReqNode) = 1;
}=1;
}=0x23451123;
program Dummy3_PROG
{
version Dummy3_VERS
{
ReqNode Dummy3(ReqNode) = 1;
}=1;
}=0x23451124;


















 
