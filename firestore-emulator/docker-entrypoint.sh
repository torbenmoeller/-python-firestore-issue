#!/bin/bash
set -xe
gcloud config set project "issue-project"
gcloud beta emulators firestore start --host-port=0.0.0.0:8180
