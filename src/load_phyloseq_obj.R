# Load Phyloseq Objects

#### Compilation of All Objects
#### Taxa
load("files/Species_PhyloseqObj.RData")
dat
load("files/Genus_PhyloseqObj.RData")
dat.genus
load("files/Family_PhyloseqObj.RData")
dat.family
load("files/Order_PhyloseqObj.RData")
dat.order
load("files/Class_PhyloseqObj.RData")
dat.class
load("files/Phylum_PhyloseqObj.RData")
dat.phylum
load("files/Kingdom_PhyloseqObj.RData")
dat.kingdom
## Function - Pathways/Enzymes/Genes
load("files/Pathways_PhyloseqObj.RData")
dat.path
load("files/Pathways.slim_PhyloseqObj.RData")
dat.path.slim
load("files/Enzymes_PhyloseqObj.RData")
dat.ec
load("files/Enzymes.slim_PhyloseqObj.RData")
dat.ec.slim
# All Kegg Ortholog Objects
load("files/KOs.all_PhyloseqObj.RData")
dat.KOs.all
load("files/KOs.all.slim_PhyloseqObj.RData")
dat.KOs.all.slim
load("files/KOs_PhyloseqObj.RData")
dat.KOs
load("files/KOs.slim_PhyloseqObj.RData")
dat.KOs.slim

### Create list for objects
Phylo_Objects <- vector(mode="list", length=15)
names(Phylo_Objects) <- c("Species", "Genus", "Family", "Order", "Class", "Phylum", "Kingdom",
                          "Pathways", "Pathways.slim", 
                          "Enzymes", "Enzymes.slim", 
                          "KOs.all", "KOs.all.slim", "KOs", "KOs.slim")

Phylo_Objects$Species <- dat; Phylo_Objects$Genus <- dat.genus; 
Phylo_Objects$Family <- dat.family; Phylo_Objects$Order <- dat.order; Phylo_Objects$Class <- dat.class;
Phylo_Objects$Phylum <- dat.phylum; Phylo_Objects$Kingdom <- dat.kingdom

Phylo_Objects$Pathways <- dat.path; Phylo_Objects$Pathways.slim <- dat.path.slim;
Phylo_Objects$Enzymes <- dat.ec; Phylo_Objects$Enzymes.slim <- dat.ec.slim;
Phylo_Objects$KOs.all <- dat.KOs.all; Phylo_Objects$KOs.all.slim <- dat.KOs.all.slim; 
Phylo_Objects$KOs <- dat.KOs; Phylo_Objects$KOs.slim <- dat.KOs.slim

save(Phylo_Objects, file = "files/PhyloseqObj.RData")

