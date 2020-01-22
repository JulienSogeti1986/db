node {
   def registryProjet='kilokilo8/db'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
    stage('Clone') {
          checkout scm
    }
    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }
    
    stage('Push') {
          docker.withRegistry('', 'dockerhubcredentials') {
              img.push 'latest'
              img.push()
          }
    }
}
