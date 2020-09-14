// The Ramanyana by Maharishi Valmiki (attributed)

// CHAPTER ONE
create 
// Peritextual elements
    (valmiki:Sage {name: "Valmiki", fullName: "Maharishi Valmiki", sanskrit: "वाल्मीकि"}),
    (ramayana:Book {name: "Ramayana", sanskrit: "रामायणम्", type: "epic"}),
    (narada:Sage {name: "Narada", sanskrit: "नारद"}),
    (narada)-[:ASKED_BY {topic: "Most virtuous person"}]->(valmiki),
    (ramayana)-[:CREATED_BY]->(valmiki),

// Narrative set-up
// Charachters introduction 
    (vishnu:God {name: "Vishnu", sanskrit: "विष्णु"}),
    (kubera:God {name: "Kubera", sanskrit: "कुबेर", responsibilities: "wealth"}),
    (rama:Character {name: "Rama", sanskrit: "राम", heir_ord: 1}),
    (kausalya:Character {name: "Kausalya"}),
    (dasharatha:Character {name: "Dasharatha", vocation: "king"}),
    (kaikeyi:Character {name: "Kaikeyi"}),
    (bharata:Character {name: "Bharata"}),
    (lakshmana:Character {name: "Lakshmana", sanskrit: "लक्ष्मण"}),
    (sumitra:Character {name: "Sumitra"}),
    (sita:Character {name: "Sita"}),

// Relations
    (kausalya)-[:MOTHER_OF]->(rama),
    (kausalya)-[:MARRIED_TO {ord: 1}]->(dasharatha),
    (dasharatha)-[:FATHER_OF {ord: 1}]->(rama),
    (dasharatha)-[:AFFINITY_TO]->(rama),
    (kaikeyi)-[:MARRIED_TO {ord: 3}]->(dasharatha),
    (kaikeyi)-[:MOTHER_OF {ord: 1}]->(bharata),
    (dasharatha)-[:FATHER_OF {ord: 2}]->(bharata),
    (sumitra)-[:MARRIED_TO]->(dasharatha),
    (sumitra)-[:MOTHER_OF]->(lakshmana),
    (dasharatha)-[:FATHER_OF]->(lakshmana),
    (lakshmana)-[:AFFINITY_TO]->(rama),
    (sita)-[:MARRIED_TO]->(rama),

// Actions
    (sita)-[:FOLLOWING {destination: "exile"}]->(rama),
    (lakshmana)-[:FOLLOWING {destination: "exile"}]->(rama),


// Characteristics and status
    (throne:Status {name: "Sovereignity"}),
    (exile:Status {name: "Exile", location: "unnamed forest"}),
    (rama)-[:COMPARED_TO {trait: "valor"}]->(vishnu),
    (rama)-[:COMPARED_TO {trait: ["generocity", "truthseeking"]}]->(kubera),
    (dasharatha)<-[:POSESSED_BY]-(throne),
    (rama)-[:HEIR_TO {ord: 1}]->(throne),
    (rama)-[:REJECTED_FROM]->(throne),
    (rama)-[:BANISHED_TO]->(exile),
    (bharata)-[:HEIR_TO {ord: 2}]->(throne),
    (bharata)<-[:ASCENDED_BY]-(throne),


// Undefined, perhaps unimportant? 
    (rama)-[:MEMBER_OF]->(iksvaku:Clan {name: "Ikshvaku"}),
//Kept due to presence in text, but probably need to attach to all male heirs of the house
    (rohini:HeavenlyBody:episodic {name: "Rohini", type: "constellation"})-[:FOLLOWING]->(moon:HeavenlyBody:episodic {name: "Moon", type: "planet"}), // Allusion
// Initial trip of Rama's exile
    (srngavera:Location:episodic {name: "Srngavera", type: "village"})-[:LOCATED_AT]->(ganga:Location:episodic {name: "Ganga", fullName: "Gagnes", type: "river"}),
    (rama)-[:CHANGED_AT {type: "dismissed charioteer and last seen his father"}]->(srngavera),
    (citakutra:Location:episodic {name: "Citakutra", type: "village"})