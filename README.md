# riedel_dataset

convert the [Riedel Dataset](http://iesl.cs.umass.edu/riedel/ecml/).

## requeiments

* bash 4.2
* python 3.6
* `python -m pip install -r requirements.txt`

## usage

```bash
cd data
ln -s <path>/ecml/heldout_relations .
ln -s <path>/ecml/kb_manual .
ln -s <path>/ecml/nyt-2005-2006.backup .
ln -s <path>/ecml/~/data/iesl.cs.umass.edu/riedel/ecml/filtered-freebase-simple-topic-dump-3cols.tsv .
cd ..
bash run.bash
```