# This Makefile is the template for you to edit. You have to modify it so that we can run your strategy.
# Please note that all parameters could change.
PLAYER_ID=2
NODES_FILE=./networks/egofb_lt_nodes.txt
EDGES_FILE=./networks/egofb_lt_edges.txt
STATUS_FILE=game_status.txt
NODES_NUM_PER_ITER=10
SELECTED_NODES_FILE=selected_nodes.txt
TIME_LIMIT_IN_SEC=60.0

strategy1:
	javac -cp ./jung/* *.java
	java -cp .:./jung/* Test $(PLAYER_ID) $(NODES_FILE) $(EDGES_FILE) $(STATUS_FILE) $(NODES_NUM_PER_ITER) $(SELECTED_NODES_FILE) $(TIME_LIMIT_IN_SEC)

strategy2:
	javac -cp ./jung/* *.java
	java -cp .:./jung/* Test $(PLAYER_ID) $(NODES_FILE) $(EDGES_FILE) $(STATUS_FILE) $(NODES_NUM_PER_ITER) $(SELECTED_NODES_FILE) $(TIME_LIMIT_IN_SEC)

strategy3:
	javac -cp ./jung/* *.java
	java -cp .:./jung/* Test $(PLAYER_ID) $(NODES_FILE) $(EDGES_FILE) $(STATUS_FILE) $(NODES_NUM_PER_ITER) $(SELECTED_NODES_FILE) $(TIME_LIMIT_IN_SEC)

clean:
	rm game_status.txt
	rm selected_nodes.txt
