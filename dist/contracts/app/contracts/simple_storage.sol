contract SimpleStorage {
	uint public lat1;
	uint public lat2;
	uint public long1;
	uint public long2;

	function SimpleStorage(uint initialValue) {
		lat1 = initialValue;
		lat2 = initialValue;
		long1 = initialValue;
		long2 = initialValue;
	}

	function set(uint x) {
		lat1 = x;
	}
	
	function set(uint nlat1, uint nlat2, uint nlong1, uint nlong2) {
		lat1 = nlat1;
		lat2 = nlat2;
		long1 = nlong1;
		long2 = nlong2;
	}
	
	function get() constant returns (uint retVal) {
		return lat1;
	}
	
	
	function getla1() constant returns (uint retVal) {
		return lat1;
	}
	
	function getla2() constant returns (uint retVal) {
		return lat2;
	}
	
	function getlo1() constant returns (uint retVal) {
		return long1;
	}
	
	function getlo2() constant returns (uint retVal) {
		return long2;
	}
}
