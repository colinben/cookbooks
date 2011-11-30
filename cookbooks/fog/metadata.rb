maintainer       "Chris Fordham"
maintainer_email "chris@xhost.com.au"
license          "Apache 2.0"
description      "Installs/Configures fog"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

recipe "fog::default", "Installs and configures Fog"
recipe "fog::install", "Installs Fog"
recipe "fog::install_delayed", "Installs Fog delayed (for using the rvm cookbook on RightScale)."