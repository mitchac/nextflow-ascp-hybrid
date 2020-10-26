nextflow.preview.dsl=2

include {ascp_download} from './modules/ascp_download.nf'
include {extract_archive} from './modules/extract_archive.nf'

Channel.from('vol1/fastq/SRR992/003/SRR9924523/SRR9924523.fastq.gz','vol1/fastq/SRR992/002/SRR9924522/SRR9924522.fastq.gz').set{ ch_paths }

workflow {
    ascp_download(ch_paths)
    extract_archive(ascp_download.out)
}
