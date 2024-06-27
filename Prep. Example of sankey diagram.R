#Example of sankey diagram

# extracted from Bai et al., 2023 (Fig 5.)


# Load necessary libraries
library(networkD3)

# Create the nodes data frame
nodes <- data.frame(
  name = c("Climate", "Aerosols", "Nutrients", "Freshwater", "Biosphere",
           "Global", "SubGlobal", "GridBased",
           "Transgressed", "NotTransgressed",
           "Zero", "Slow", "Rapid",
           "Backward", "Current",
           "Legacy", "Sovereignty", "EconContrib", "SocialContrib")
)

# Create the links data frame
links <- data.frame(
  source = c(0, 0, 1, 1, 2, 3, 3, 4,
             5, 5, 6, 6, 7,
             8, 8, 9, 9,
             10, 10, 11, 11, 12, 12,
             13, 13, 14, 14),
  target = c(5, 6, 5, 6, 6, 6, 7, 7,
             8, 9, 8, 9, 8,
             10, 11, 11, 12,
             13, 14, 13, 14, 13, 14,
             15, 16, 17, 18),
  value = c(10, 5, 3, 7, 8, 6, 4, 2,
            11, 4, 5, 6, 7,
            9, 2, 3, 4,
            5, 6, 7, 8, 9, 6,
            10, 11, 12, 13)
)

# Create the Sankey diagram
sankey <- sankeyNetwork(Links = links, Nodes = nodes,
                        Source = "source", Target = "target",
                        Value = "value", NodeID = "name",
                        sinksRight = FALSE, fontSize = 12, nodeWidth = 30)

# Save the diagram as an HTML file
#saveNetwork(sankey, "sankey_diagram.html", selfcontained = TRUE)


# probably this will help transforming the DF of the revision to make the diagram
# https://r-graph-gallery.com/321-introduction-to-interactive-sankey-diagram-2.html 