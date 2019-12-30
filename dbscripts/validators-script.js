db = new Mongo().getDB(dbName);
db.createCollection("students", {
	validator: {
		$jsonSchema: {
			bsonType: "object",
			required: ["name", "year"],
			properties: {
				name: {
					bsonType: "string"
				},
				year: {
					bsonType: "int"
				}
			}
		}
	}
})
db.students.insert({name:"test-initial-value-1", year: NumberInt(2019)})