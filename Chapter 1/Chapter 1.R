mydata=read.table("snps.txt", header=T,sep="\t") #Alleles in SNPs
mydata
pheno = read.table("animals.txt", header = T, sep="\t")
pheno

data = cbind(mydata, pheno) #joined the two series by column
data = data[,-1] #dropped column 1
data = data[,c(3, 4, 1, 2)] #rearranged columns
data
data$allele1 = factor(data$allele1) 
data$allele2 = factor(data$allele2)

summary(data)

#Allele counts for  each SNP
barplot(c(summary(data$allele1),summary(data$allele2)), main="Allele counts", 
        col = c(1,2,3,1,2,3), xlab = 'Allele', ylab = 'Frequency')
#Pooled allele counts
