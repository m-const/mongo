pipeline {
    
    parameters{
        string(name: 'CONTAINER_NAME', defaultValue: 'mongo', description: "Docker Container Name")
        string(name: 'IMAGE_NAME', defaultValue: 'anura', description: "Docker Container Name")
        booleanParam(name: 'RUNTESTS', defaultValue: false, description: "Run Test Section?")
        booleanParam(name: 'CLEAR_DOCKER', defaultValue: true, description: "Force delete other containers running on this port?")
        string(name: 'VOLUME', defaultValue: 'mongo', description: "Docker Volume to use.")

    }
    environment{
       PORT="27017"
       
       DOCKER_IMAGE_VERSION="1.1"
    }
    agent { label 'dev-docker' } 
    stages{
        stage("Build"){
            steps{
                echo "Create the Docker Image"
                sh "docker build -t ${params.IMAGE_NAME}-mongo:${DOCKER_IMAGE_VERSION} ."
            }
        }
        stage("Clean Up"){
            when{
                expression{
                    params.CLEAR_DOCKER == true
                }
            }
            steps{
                sh "docker rm -f \$(docker ps -q -f 'publish=${PORT}') || echo 'No Running Containers on PORT: ${PORT} to remove'"
            }
        }
        stage("Deploy"){
            steps{
                sh "docker run --name ${params.CONTAINER_NAME} -v ${params.VOLUME}:/data/db -p ${PORT}:27017 -d --restart unless-stopped ${params.IMAGE_NAME}-mongo:${DOCKER_IMAGE_VERSION}"
            }
        }

        stage("Test"){
          when{
                expression{
                    params.RUNTESTS == true
                }
            }
            steps{
                echo "Tests"
            }
        }
    }
    post {
       
        always{
            echo "Build number: ${BUILD_NUMBER}"
        }
        success{echo "Success!"}
        failure{echo "Failure!"}
    }
}
