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
        //DP = credentials('ndp')
        //DU =  credentials('ndu')
    }
    
    stages {
        stage('Build') { 
            steps {
                  //sh "echo ${DU}"
                  //sh "echo ${DP}"
                  sh "echo ${NEXUS_CREDENTIAL_ID_USR}"
                  sh "echo ${NEXUS_CREDENTIAL_ID_PSW}"
                  sh "docker login -u ${NEXUS_CREDENTIAL_ID_USR} -p ${NEXUS_CREDENTIAL_ID_PSW} http://localhost:8081/"
                 //sh 'docker build -t jnksmypetclinic .'
            }
        }
    }
}
