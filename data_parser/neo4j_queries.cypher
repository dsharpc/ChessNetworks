CALL gds.graph.create('projected-graph','*', {
    CAPTURED: {
        type:'CAPTURED',
        properties:['Pct_of_games']
    }
})
YIELD graphName, nodeCount, relationshipCount;


CALL gds.pageRank.write('projected-graph', {
  maxIterations: 100,
  dampingFactor: 0.85,
  relationshipWeightProperty: 'Pct_of_games',
  writeProperty: 'pagerank'
})
YIELD nodePropertiesWritten AS writtenProperties, ranIterations, didConverge

match (a)
return a.name, a.pagerank
order by a.pagerank desc