// The Ramanyana by Maharishi Valmiki (attributed)

// CHAPTER ONE
create 
// Peritextual elements
    (valmiki:Sage {name: "Valmiki", fullName: "Maharishi Valmiki", sanskrit: "वाल्मीकि"}),
    (ramayana:Book {name: "Ramayana", sanskrit: "रामायणम्", type: "epic"}),
    (narada:Sage {name: "Narada", sanskrit: "नारद"}),
    (narada)<-[:TOLD_BY {topic: "Most virtuous person"}]-(valmiki),
    (ramayana)-[:CREATED_BY]->(valmiki),

// Narrative set-up
// Charachters
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
    (bharadvaja:Sage {name: "Bhardavaja"}),
    (viradha:Monster {name: "Viradha", type: "rakasa"}),
    (agastya:Sage {name: "Agastya"}),
// Items
    (bow:Item {name: "Indra's bow", provenance: "Indra"}),
    (sword:Item {name: "Indra's sword", provenance: "Indra"}),
    (arrow:Item {name: "Indra's arrow quivers", provenance: "Indra", quantity: 2}),

// Locations and status
    (throne:Status {name: "Sovereignity"}),
    (exile:Status {name: "Exile"}),
    (ganga:Location {name: "Ganga", fullName: "Gagnes", type: "river"}),
    (citakutra:Location {name: "Citakutra", type: "village"}),
    (srngavera:Location {name: "Srngavera", type: "village"}),
    (dandaka:Location {name: "Dandaka", type: "forest"}),


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
    (sita)-[:FOLLOWING {subject: "Rama"}]->(exile),
    (lakshmana)-[:FOLLOWING {subject: "Rama"}]->(exile),
    (exile)-[:STOPPED_AT {reason: "dismissed charioteers and seen his father for the last time"}]->(srngavera),
    (bhardavaja)<-[:TOLD_BY {subject: "Rama"}]-(citakutra),
    (rama)-[:KILLED]->(viradha),
    (rama)-[:VISIT]->(agastya),
    // MATCH ({provenance: "Indra"}) return indra,
    // (agastya)-[:GIVES]->(indra),
    // (rama)<-[:RECIEVES]-(indra),

// Abode
    (exile)-[:RESIDING_AT]->(citakutra),
    (citakutra)-[:RESIDING_AT {subject: "Rama moved for privacy"}]->(dandaka),
    (viradha)-[:RESIDING_AT]->(dandaka),
    (agastya)-[:RESIDING_AT]->(dandaka),


// Characteristics
    (rama)-[:COMPARED_TO {trait: "valor"}]->(vishnu),
    (rama)-[:COMPARED_TO {trait: ["generocity", "truthseeking"]}]->(kubera),
    (rama)-[:BANISHED_TO]->(exile),
// Power transactions
    (dasharatha)<-[:POSESSED_BY]-(throne),
    (rama)-[:HEIR_TO {ord: 1}]->(throne),
    (rama)-[:IS_DENIED]->(throne),
    (bharata)-[:HEIR_TO {ord: 2}]->(throne),
    (vasishta)-[:OFFER {subject: "throne"}]->(bharata),
    (bharata)<-[:REJECTED_BY]-(throne),
    (bharata)-[:VISIT {subject: "Rama"}]->(citakutra),
    (rama)-[:URGES]->(bharata),
    (rama)-[:GIVES]->(:Item {name: "Sandals"}),
    (bharata)<-[:ASCENDED_BY]-(throne),

// Undefined, perhaps unimportant? 
// Kept due to presence in text, but probably need to attach to all male heirs of the house
    (rama)-[:MEMBER_OF]->(iksvaku:Clan {name: "Ikshvaku"}),
// Allusion
    (moon:HeavenlyBody:episodic {name: "Moon", type: "planet"}),
    (rohini:HeavenlyBody:episodic {name: "Rohini", type: "constellation"}),
    (rohini)-[:FOLLOWING]->(moon),
// Location
    (ganga)<-[:LOCATED_AT]-(srngavera)
