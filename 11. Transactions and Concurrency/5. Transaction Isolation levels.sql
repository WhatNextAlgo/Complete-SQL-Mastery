/*
Concurrency problems:
 1. Lost Updates : If two transaction update the same customers, one tries to increase the points and other tries to update the state
					(To prevent this kind of scenario we use Locking mechanism, To update the same table at the same time.). 
                    
 2. Dirty Reads : Dirty Reads happens when a transaction reads data that hasn't been committed yet
				(To prevent this kind of scenario we have to use Read Committed Isolation Level). 

 3.  Non-repeating Reads : what if we read mulitple transactions and get different result
						(To prevent this kind of scenario we have to use Repeatable Read Isolation Level). 

 4. Phantom Reads : Phantom Reads happens when we suddenly update the transaction and that transaction are not part of the Query.
					(To prevent this kind of scenario we have to use Serializable Isolation Level). 
          
 Transaction Isolation Levels:
 1. Read Uncommitted
 2. Read Committed
 3. Repeatabe Read
 4. Serializable
 
 Cons:
 If we use more locks then this required more resources which will hits performance and scalability. 
 
 */
 
SHOW VARIABLES LIKE 'transaction_isolation';
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;

