name             "berkshelf-api"
maintainer       "Jamie Winsor"
maintainer_email "jamie@vialstudios.com"
license          "Apache 2.0"
description      "Installs/Configures a berkshelf-api server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.3.1"

supports "ubuntu"

depends "runit"
depends "nginx",      ">= 1.7.0"
depends "libarchive", "~> 0.4"
depends "github",     "~> 0.2"
