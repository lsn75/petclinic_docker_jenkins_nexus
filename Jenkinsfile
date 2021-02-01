pipeline {
    agent { label 'localjobs' }

    environment {
        // This can be nexus3 or nexus2
        NEXUS_VERSION = "nexus3"
        // This can be http or https
        NEXUS_PROTOCOL = "http"
        // Where your Nexus is running. 'nexus-3' is defined in the docker-compose file
        NEXUS_URL = "localhost:8081"
        // Repository where we will upload the artifact
        NEXUS_REPOSITORY = "maven-snapshots"
        // Jenkins credential id to authenticate to Nexus OSS
        NEXUS_CREDENTIAL_ID = credentials('nexus-credentials')
    }
    
    stages {
        stage('Build') { 
            steps {
                  echo $NEXUS_CREDENTIAL_ID_USR
                  echo $NEXUS_CREDENTIAL_ID_PSW
                 //sh 'docker build -t jnksmypetclinic .'
            }
        }
    }
}
