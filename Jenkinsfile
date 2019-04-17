#!groovy

node('master') {

try {
    cleanWs()
    stage('git pull') {

        checkout scm

	}

   stage('terraform init') {

sh '''if [ "$AWS_Region" = "Asia Pacific (Mumbai) ap-south-1"  -a  "$OS_Types" = "Ubuntu 16.04" ]
then
        export TF_VAR_image_id=ami-0a574895390037a62
        echo "Install $TF_VAR_image_id in Mumbai Region"
elif [ "$AWS_Region" = "Asia Pacific (Singapore) ap-southeast-1"  -a  "$OS_Types" = "Ubuntu 18.04" ]
then	
        export TF_VAR_image_id=ami-007d5db58754fa284
	    echo "Install $TF_VAR_image_id in $AWS_Region Region"
fi'''

       sh 'terraform init'
       sh 'terraform plan'
       sh 'terraform apply -auto-approve'
	}

}
    catch (err) {
    currentBuild.result = "FAILURE"
    throw err
    }

}
