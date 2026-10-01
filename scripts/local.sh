# This setup's values for the MiaAI-Lab dual-Spark cluster, committed to the altruistOS fork so a
# clone on the head is ready to run. scripts/config.sh sources this file first: values here win
# over .env and the defaults. (Upstream keeps this file out of the repository; here it travels
# with the fork on purpose.)

# spark-38a0 (rank 1) over the CX7 link: the ssh target is the fabric address itself, so no
# FABRIC_PEER is needed. Key-based ssh from the head verified (ssh -o BatchMode=yes ... true).
WORKER=kenleo_dgx@192.168.177.12

# The checkpoint snapshot already in both Sparks' HF caches (refs/main, 164 GiB complete, 121
# safetensors shards). The repository's default pin (9eaebb7c...) is not what is on disk; keeping
# it would make prepare.sh re-download ~164 GB. DFlash2's cache matches its pin, so it needs no
# override.
MODEL_REVISION=024db9f7e9871e8efdf21538ba55af7442be3cd5
