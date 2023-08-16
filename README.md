# A utility script for filtering the bedGraph files

This little script parallelizes the `bedtools intersect` utility for filtering the `bedGraph` files.

## Pre-requisites

- Nextflow
- Conda 

## Usage

```
nextflow pull https://github.com/wal-yan/bed_filter
```

## Options

#### Input samplesheet

The structure of samplesheet is very minimal since it only requires `source` and `target` columns as shown below

```csv
sample,bedGraph
sample-1,/path/to/sample-1.bedGraph
sample-2,/path/to/sample-2.bedGraph
```

Then refer that while invoking the pipeline

```
nextflow run https://github.com/wal-yan/bed-filter --input /path/to/samplesheet.csv
```


## Customizing the script

To customize these scripts, you can take a look at the available parameters in `./nextflow.config` file and then override them using a local config file, in a directory where you'd like to launch the pipeline.

## Citation

Please use the [Github `citation` page](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files) to cite this wrapper in your research.

## Contribution

If you have specific requirements, you are encouraged to fork/clone and update your version to accomodate your needs. 

Contribution, in all forms, is most welcome!
