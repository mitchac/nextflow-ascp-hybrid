nextflow.preview.dsl=2

include {ascp_download} from './modules/ascp_download.nf'

Channel.from('vol1/fastq/SRR144/004/SRR1448774/SRR1448774.fastq.gz','vol1/fastq/SRR307/SRR307897/SRR307897_1.fastq.gz').set{ ch_paths }

workflow {
    ascp_download(ch_paths)
}
