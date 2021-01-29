CREATE INDEX ON :KsNode(node_id)

LOAD CSV WITH HEADERS FROM 'file:///MOCT_NODE_LATLNG_2.csv' AS row
MATCH (n: KsNode)
WHERE n.node_id = row['NODE_ID']
SET n.latlng = Point({longitude: toFloat(row['LNG']), latitude: toFloat(row['LAT'])})