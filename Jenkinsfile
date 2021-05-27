node{
    stage('Change title'){
        sh ('sed -i s/My Website/${env.input}${env.BUILD_NUMBER}/g /home/noc/index.html')
        sh ('sed -i s/me/${env.user}/g /home/noc/index.html')
    } 
}
