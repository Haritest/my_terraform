#!groovy

node('master') {

try {
    cleanWs()
    stage('git pull') {

        checkout scm

	}

   stage('terraform init') {

       sh ' terraform init'
       sh 'terraform plan'

	}

}
    catch (err) {
    currentBuild.result = "FAILURE"
    throw err
    }

}