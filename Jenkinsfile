#!groovy

node('master') {

try {
//    cleanWs()
    stage('git pull') {

        checkout scm

	}

/*   stage('terraform init') {

sh '''if [ "$AWS_Region" = "Asia Pacific (Mumbai) ap-south-1"  -a  "$OS_Types" = "Ubuntu 16.04" ]
then
      echo "creating Ubuntu 16.04"
            terraform init
            terraform plan -var="image_id=ami-0a574895390037a62"
            terraform apply -var="image_id=ami-0a574895390037a62" -auto-approve


elif [ "$AWS_Region" = "Asia Pacific (Mumbai) ap-south-1"  -a  "$OS_Types" = "Ubuntu 18.04" ]
then	
       echo "creating Ubuntu 18.04"
       terraform init
       terraform plan -var="image_id=ami-007d5db58754fa284"
       terraform apply -var="image_id=ami-007d5db58754fa284" -auto-approve


fi''' 

	} */

}
    catch (err) {
    currentBuild.result = "FAILURE"
    throw err
    }

}
