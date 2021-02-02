terraform {
    required_providers {
        docker = {
            #  He actualizado el repo del provider de docker
            source = "kreuzwerker/docker"
        }
    }
}

provider "docker" { }

resource "docker_image" "imagen-ubuntu" {
//  OJO, tomo el último UBUNTU ¿?
    name = "${var.nombre_imagen}:${var.version_imagen}"
}

/*
2 volúmenes dentro del contendor
HOST
/home/ubuntu/enviroment/cursoTerraform  >   /cursoTerraform
/home/ubuntu/enviroment/ivan            >   /ivan
*/




/*
    Me estoy creando un contenedor
*/
resource "docker_container" "contenedor-ubuntu" {
  name  = "mi_contenedor_ubuntu"
  image = docker_image.imagen-ubuntu.latest
}