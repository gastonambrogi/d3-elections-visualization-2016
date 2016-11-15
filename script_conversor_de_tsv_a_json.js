//GET a https://gist.githubusercontent.com/mbostock/4090846/raw/07e73f3c2d21558489604a0bc434b3a5cf41a867/us-state-names.tsv
.split("\n").map(function(row){
	var row_splitted=row.split("\t") ;
	return {
		id: row_splitted[0],
		key: row_splitted[1],
		description: row_splitted[2]
	}
})