process extract_archive {

input:
file(archive)

output:

script:
"""
gunzip -f ${archive}
"""
}
