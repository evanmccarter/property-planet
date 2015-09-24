contract Registrar {
	struct Bid {
		address buyer;
		uint latStart;
		uint latEnd;
		uint longStart;
		uint longEnd
		uint payment;
	}
	
	
	uint numBids;
	mapping (uint => Bid) bids;
	
	
	function newBid(uint latStart, uint latEnd, uint longStart, uint longEnd, uint payment) returns (uint bidID) {
		bidID = numBids++; // bidID is return variable
		
		//TODO: calculate if msg.value is sufficient, send money to original owner or refund as applicable
			//calculate value of land requested
				//for each bid, starting at the most recent, ending when 100% of the desired area is claimed
					//if the bid includes land in the desired area
						//calculate the proportion that is in the desired area and not overlapped by an existing bid
							//this part is the harder meat
						//add the coordinates of the proportion to a list
						//add the value of that proportion to the total bid required as an array entry for later tally and proportion tracking
						//check what percentage of the desired area is accounted for
		
		//if bid is sufficient
			// Creates new struct and saves in storage. We leave out the mapping type.
			bids[bidID] = Bid(msg.sender, latStart, latEnd, longStart, longEnd, msg.value);
			
			//calculate previous owners of land and distribute portions appropriately
			return;
	}
	
	//TODO: old code from example. delete
	function contribute(uint campaignID) {
		Campaign c = campaigns[campaignID];
		// Creates a new temporary memory struct, initialised with the given values
		// and copies it over to storage.
		// Note that you can also use Funder(msg.sender, msg.value) to initialise.
		c.funders[c.numFunders++] = Funder({addr: msg.sender, amount: msg.value});
		c.amount += msg.value;
	}
	
	//TODO: old code from example. delete
	function checkGoalReached(uint campaignID) returns (bool reached) {
		Campaign c = campaigns[campaignID];
		if (c.amount < c.fundingGoal)
			return false;
		c.beneficiary.send(c.amount);
		c.amount = 0;
		return true;
	}
}
