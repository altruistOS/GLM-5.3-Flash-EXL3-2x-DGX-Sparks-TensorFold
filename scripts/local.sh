# This setup's values for the MiaAI-Lab dual-Spark cluster, committed to the altruistOS fork so a
# clone on the head is ready to run. scripts/config.sh sources this file first: values here win
# over .env and the defaults. (Upstream keeps this file out of the repository; here it travels
# with the fork on purpose.)

# spark-38a0 (rank 1) over the CX7 link: the ssh target is the fabric address itself, so no
# FABRIC_PEER is needed. Key-based ssh from the head verified (ssh -o BatchMode=yes ... true).
WORKER=kenleo_dgx@192.168.177.12

# v1.4 serves the new Mia-AiLab/GLM-5.3-Flash-EXL3-4bpw-TensorFold checkpoint by default; its
# pin (078455ff...) is inherited from scripts/config.sh, so nothing is overridden here. The old
# GLM-5.3-Flash-EXL3-TR3-4bpw snapshot (024db9f7...) stays in both Sparks' HF caches but is no
# longer referenced; remove it there to reclaim ~164 GiB on each Spark once the new checkpoint
# has been rsynced to the worker.
