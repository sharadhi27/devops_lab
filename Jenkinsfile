pipeline {
agent any
tools {
maven 'Maven3'
}
stages {
stage('CHECKOUT') {
steps {
git 'https://github.com/sharadhi27/devops_lab.git'
}
}
stage('Build') {
steps {
dir('demo'){
bat 'mvn clean install'
}
}
}
stage('Test') {
steps {
dir('demo'){
bat 'mvn test'
}
}
}
}
}
