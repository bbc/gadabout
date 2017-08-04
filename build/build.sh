#!/bin/bash
set -o nounset -o errexit -o pipefail -o errtrace

mkdir -p ~/.gem

echo -e "---\n:rubygems_api_key: 'missing'" > ~/.gem/credentials

curl -u${ARTIFACTORY_USERNAME}:${ARTIFACTORY_API_KEY}                                                             \
	     https://artifactory-noforge.virt.ch.bbc.co.uk/artifactory/api/gems/irfs-rubygems/api/v1/api_key.yaml \
	          | grep rubygems_api_key | sed 's/rubygems_api_key/artifactory_api_key/g' >> ~/.gem/credentials

chmod 0600 ~/.gem/credentials

/usr/local/bin/gem build ./gadabout.gemspec
/usr/local/bin/gem push bbc-gadabout-0.5.9.gem \
    --key artifactory_api_key \
    --host https://artifactory-noforge.virt.ch.bbc.co.uk/artifactory/api/gems/irfs-rubygems
