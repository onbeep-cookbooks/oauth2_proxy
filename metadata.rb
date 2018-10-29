name             'oauth2_proxy'
maintainer       'Orion Labs, Inc.'
maintainer_email 'Mike Juarez <mike@orionlabs.co>'
license          'Apache License, Version 2.0'
description      'Installs/Configures oauth2_proxy'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '2.4.0'

depends 'ark'
