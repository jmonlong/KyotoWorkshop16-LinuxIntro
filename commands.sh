## ssh jmonlong@www.genome.med.kyoto-u.ac.jp
ls
echo Hello
man echo

pwd
mkdir workshop
cd workshop
mkdir linux
cd ..

wget https://goo.gl/FLGAZH
cp FLGAZH workshop/linux
rm FLGAZH
cd workshop/linux
mv FLGAZH gencode.gtf

cd ~/workshop/linux
head gencode.gtf
less gencode.gtf
less -S gencode.gtf
wc gencode.gtf
grep ENSG00000278267 gencode.gtf

gzip gencode.gtf
zgrep ENSG00000278267 gencode.gtf.gz
gunzip gencode.gtf.gz

gzip gencode.gtf
zcat gencode.gtf.gz | grep ENSG00000278267
zcat gencode.gtf.gz | grep ENSG00000278267 | head -n 1 
zcat gencode.gtf.gz | grep ENSG00000278267 | grep exon
zcat gencode.gtf.gz | grep ENSG00000278267 | less

zcat gencode.gtf.gz > gencode.gtf
ls -lh
zcat gencode.gtf.gz | grep ENSG00000278267 | head > gene1.gtf
