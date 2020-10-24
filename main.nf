nextflow.preview.dsl=2

include {ascp_download} from './modules/ascp_download.nf'

Channel
    .fromSRA('SRR5352271',apiKey:'')                                    
    .set { ch_read_pairs }
workflow {
    trimming(ch_read_pairs)
}
