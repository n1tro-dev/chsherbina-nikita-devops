pipeline {
    agent any
    environment {
        STUDENT_NAME = 'Nikita'
        STUDENT_SURNAME = 'Chsherbina'
        STUDENT_GROUP = 'IT2-2314'
        STUDENT_ID = '38222'
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                sh 'git log -1'
            }
        }
        stage('Build') {
            steps {
                echo "Building application..."
                sh 'cat Chsherbina_Nikita_info.txt'
            }
        }
        stage('Test') {
            steps {
                echo "Running system test..."
                sh './scripts/Chsherbina_Nikita_system.sh'
            }
        }
        stage('Docker Build') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t chsherbina-nikita-devops .'
            }
        }
        stage('Docker Run') {
            steps {
                echo "Running Docker container..."
                sh 'docker stop chsherbina-nikita-container || true'
                sh 'docker rm chsherbina-nikita-container || true'
                sh '''
                docker run --name chsherbina-nikita-container \
                  -e STUDENT_NAME=${STUDENT_NAME} \
                  -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                  -e STUDENT_GROUP=${STUDENT_GROUP} \
                  -e STUDENT_ID=${STUDENT_ID} \
                  chsherbina-nikita-devops
                '''
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
            }
        }
    }
}
