node {
  deleteDir()
  checkout scm
  echo 'beginnning workflow...'

  stage 'prepare gems'
  sh '''#!/bin/bash
  bundle update
  '''

  stage 'syntax testing'
  sh '''#!/bin/bash
  bundle exec puppet parser validate manifests/
  '''

  stage 'lint testing'
  sh '''#!/bin/bash
  bundle exec puppet-lint --no-autoloader_layout-check manifests/*.pp
  '''

  stage 'rspec testing'
  sh '''#!/bin/bash
  bundle exec rake spec
  '''


  stage 'deploy'
  echo 'deploy to puppet masters'
}
