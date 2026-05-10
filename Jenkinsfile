pipeline {
	agent any
	
	stages {
		stage('Descargar Código') {
			steps {
				echo 'Clonando el repositorio desde GitHub...'

				git branch: 'desarrollo',
				url: 'https://github.com/eleazar-hub/proyecto-devsecops.git'
		}
	}

	stage('Construir Imagen') {
		steps {	
			sh 'docker build -t mi-app-segura:latest .'
		}
	}
	
	stage('Analisis Seguridad Trivy') {
		steps {
			echo 'buscando vulnerabilidades criticas...'

			sh 'exit 1'
		}
	}

	stage('Despliegue Produccion') {
		steps {
			sh 'docker stop app-produccion || true'
			sh 'docker rm app-produccion || true'
			sh 'docker run -d --name app-produccion mi-app-segura:latest'
			
			}
		}
	}
}
