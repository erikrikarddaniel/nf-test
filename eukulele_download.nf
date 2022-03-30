nextflow.enable.dsl = 2

process download_db {
    input:
    val db

    output:
    stdout

    """
    EUKulele download --database $db
    """
}

workflow {
    Channel.of('phylodb') | download_db | view
}
