pipeline {
    agent any

    stages {
        stage('Serve HTML File') {
            steps {
                // Start a simple Python HTTP server to serve the HTML file
                // Replace 'index.html' with your actual file name
                sh 'python3 -m http.server 8080 &'
                echo 'HTML file is being served at http://localhost:8080/index.html'
            }
        }

        stage('Archive HTML File') {
            steps {
                // Save the HTML file as a build artifact so you can download/view it from Jenkins UI
                archiveArtifacts artifacts: 'index.html', fingerprint: true
            }
        }
    }
}

