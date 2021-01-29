// Create nodes
LOAD CSV WITH HEADERS FROM 'file:///MOCT_NODE.csv' AS row
CREATE (n: KsNode {
    node_id: row['NODE_ID'], 
    node_type: row['NODE_TYPE'], 
    node_name: row['NODE_NAME'], 
    turn_p: row['TURN_P'], 
    remark: row['REMARK']
    });

// MATCH (n) RETURN n LIMIT 25;
// cf. LOAD ~ row 이하부터는 row에 대한 for문이 수행됨.


// Create links
LOAD CSV WITH HEADERS FROM 'file:///MOCT_LINK.csv' AS row
MATCH (n: KsNode), (m: KsNode)
WHERE n.node_id = row['F_NODE'] AND m.node_id = row['T_NODE']
CREATE (n) -[
    r: KSLINK {
        link_id: row['LINK_ID'],
        lanes: row['LANES'],
        road_rank: row['ROAD_RANK'],
        road_type: row['ROAD_TYPE'],
        road_no: row['ROAD_NO'],
        road_name: row['ROAD_NAME'],
        road_use: row['ROAD_USE'],
        multi_link: row['MULTI_LINK'],
        connect: row['CONNECT'],
        max_spd: row['MAX_SPD'],
        rest_veh: row['REST_VEH'],
        rest_w: row['REST_W'],
        rest_h: row['REST_H'],
        length: row['LENGTH'],
        remark: row['REMARK']
    }]-> (m);

MATCH ()-[r: KSLINK {road_name = '종로'}]-()