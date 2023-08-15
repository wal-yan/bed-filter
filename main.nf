#!/usr/bin/env nextflow

include { BEDTOOLS_INTERSECT as BED_FILTER } from './modules/nf-core/bedtools/intersect/main'                                         


/*
#==============================================
WAL_YAN/BED_FILTER
#==============================================
*/


workflow WAL_YAN {

        ch_in_bedtools = Channel.fromPath( params.samplesheet )
                            .splitCsv(header: false, skip: 1)
                            .map{ row -> 
                                    {
                                        sampleName          = row[0]
                                        bedGraphFile        = row[1]

                                        return tuple([id:sampleName], bedGraphFile)
                                    }
                                }

        BED_FILTER (ch_in_bedtools, params.bed)

}


workflow {
    WAL_YAN ()
}
