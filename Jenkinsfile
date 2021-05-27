node{
    def appenv = '/var/lib/jenkins/workspace/test_job'
    stage ('Clone repository'){
        checkout([$class: 'GitSCM', 
        branches: [[name: '*/master']],
        extensions: [], userRemoteConfigs: [[url: 'https://github.com/89528/test_solutions']]])
    }
    stage('Change title'){
        sh ("sed -i 's/My Website/${env.title}${env.BUILD_NUMBER}/' ${appenv}/index.html")
        sh ("sed -i '16s/me/${env.username}/' ${appenv}/index.html")
       sh ("sed -i '17i${env.DURATION}' ${appenv}/index.html")
        sh("sed -i  '18i JenkinsProject_${env.JOB_NAME}' ${appenv}/index.html")
    }
    stage('Build'){
        dir("${appenv}"){
            sh 'sudo docker-compose down'
            sh 'sudo docker-compose up -d'
        }
    }
}
