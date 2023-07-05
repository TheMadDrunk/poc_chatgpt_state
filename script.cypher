create (na:User:Person:Student:FullstackDeveloper {
    id: "9Gz4f5E7dZ",
    name: "Hamza Alaoui",
    occupation: [
        "Student",
        "Fullstack Developer"
    ],
    educational_institution: "ENSA Kenitra",
    graduation_year: "Next Year"
});

create (n:EducationalInstitution {
    id:"7Hn4R5t9Fz",
    name:"ENSA Kenitra"
});
create (n1:Location {
id: "5Fg2D1u7Jz",
name: "Kenitra"
});
create (n2:Location {
id: "6Ki8C3v4Lz",
name: "Casa"
});
create (n3:Date {
id: "4Yj2B1q5Mz",
name: "5/7/2023"
});
create (n4:Organization {
id: "1Oz7G2p4Nz",
name: "Nemo Technologies"
});
create (n5:Project {
id: "2Xa5G9s8Uz",
name: "audioGTP"
});
create (n6:Person {
id: "3Ic8G1r5Tz",
name: "Kamil"
});
create (n7:Time {
id: "2Lb6V4y8Rz",
name: "15:30"
});

match (entity where entity.id = "9Gz4f5E7dZ")
match (object where object.id = "7Hn4R5t9Fz")
merge (entity)-[relation1:graduation]->(object);

match (entity where entity.id = "9Gz4f5E7dZ")
match (object where object.id = "5Fg2D1u7Jz")
merge (entity)-[relation2:located_in]->(object);

match (entity where entity.id = "9Gz4f5E7dZ")
match (object where object.id = "6Ki8C3v4Lz")
merge (entity)-[relation3:travelling_to]->(object);

match (entity where entity.id = "6Ki8C3v4Lz")
match (object where object.id = "4Yj2B1q5Mz")
merge (entity)-[relation4:travel_date]->(object);

match (entity where entity.id = "9Gz4f5E7dZ")
match (object where object.id = "1Oz7G2p4Nz")
merge (entity)-[relation5:internship_at]->(object);

match (entity where entity.id = "1Oz7G2p4Nz")
match (object where object.id = "6Ki8C3v4Lz")
merge (entity)-[relation6:located_in]->(object);

match (entity where entity.id = "9Gz4f5E7dZ")
match (object where object.id = "2Xa5G9s8Uz")
merge (entity)-[relation7:working_on]->(object);

match (entity where entity.id = "9Gz4f5E7dZ")
match (object where object.id = "3Ic8G1r5Tz")
merge (entity)-[relation8:meeting_with]->(object);

match (entity where entity.id = "3Ic8G1r5Tz")
match (object where object.id = "2Lb6V4y8Rz")
merge (entity)-[relation9:meeting_time]->(object);

match (entity where entity.id = "3Ic8G1r5Tz")
match (object where object.id = "4Yj2B1q5Mz")
merge (entity)-[relation10:meeting_date]->(object);
