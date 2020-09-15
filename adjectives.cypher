// CHAPTER 1
    // Relationships
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
    (khara)-[:IS]->(surpanakaVassals),
    (trisiras)-[:IS]->(surpanakaVassals),
    (dusana)-[:IS]->(surpanakaVassals),
    
    // Accomodation
    
