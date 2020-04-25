# ChessNetworks
Exploring Chess captures using Neo4j graphs

This project uses Docker Compose to run and connect to the Neo4j database. To start the containers do:

```
docker-compose up -d
```

Then, to get the link to the Jupyter Notebooks do:

```
docker-compose logs
```

You should get a link in the terminal.

To reproduce the project follow the next steps:

1. Run the Parser Notebook  
In this notebook you can also change the number of games to use and the data source, so you can replace the pgn file being loaded with a different one.  

2. Run the Neo4j Algorithms Notebook  
This notebook will load the data into Neo4j and run the Degree Centrality and Louvain algorithms. It will also produce the output for the visualisation.  

3. Run the Graph Visualisation Notebook
This notebook will allow you to use the Vis.js library to visualise the interactive graph networks inside the Jupyter Notebook.