# MAINTAINER: Alen Komljen <akomljen.com>

CHARTS = $(shell ls -d */ | grep -v charts)

package:
	helm package $(CHARTS) -d charts --dependency-update
	helm repo index charts --merge charts/index.yaml
