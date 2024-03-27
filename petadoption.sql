
Pet_Adoption_Agency {
	Pet_Adoption_ID serial pk null increments unique
	Location varchar(25) null
	Potential_Owners integer null increments
	Adopted integer null increments
	Owner_ID integer increments unique >* Potential_Owners.Owner_ID
	Dog_ID integer increments unique >* Dog_ID.Dog_ID
	Location_ID integer increments unique >* Dog_Location.Location_ID
}

Dog_ID {
	Dog_Name varchar(25) null increments unique > Dog_Available.Dog_Name
	Dog_Gender varchar(10) null
	Dog_Age integer null increments
	Dog_Location integer null increments >* Pet_Adoption_Agency.Dog_Location
	Dog_ID serial pk increments unique
}

Dog_Location {
	Location_NYC varchar(25) null increments unique
	Location_LA varchar(25) null
	Location_ATL varchar(25) null increments
	Location_DMV varchar(25) null increments
	Location_ID serial pk increments unique
}

Potential_Owners {
	Owner_Name varchar(25) pk increments unique
	Owner_Location integer
	Owner_Phone integer
	Owner_ID integer
}
