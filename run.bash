#!/bin/bash

cd src/java
bash convert.bash 1

cd ../python
bash convert.bash 1

#cd ../java
#bash convert.bash 0

cd ../../
cat ./data/heldout_relations/trainPositive.tsv >> ./data/train1.tsv
cat ./data/heldout_relations/trainNegative.tsv >> ./data/train1.tsv
cat ./data/heldout_relations/testPositive.tsv >> ./data/test.tsv
cat ./data/heldout_relations/testNegative.tsv >> ./data/test.tsv

cat ./data/kb_manual/trainPositive.tsv >> ./data/train1.tsv
cat ./data/kb_manual/trainNegative.tsv >> ./data/train1.tsv

cd src/python
#bash convert.bash 0
python generate_train.py
#rm ../../data/train1.tsv