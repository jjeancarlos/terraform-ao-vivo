module "app" {
  source = "./modules/app-escalavel"

  # Identificação da aplicação
  nome       = "terraform-ao-vivo"
  dominio    = "mesa.gomex.me"
  subdominio = "aovivo"

  # Configuração do Auto Scaling
  quantidade_de_maquinas = 2
  minimo_de_maquinas     = 1
  maximo_de_maquinas     = 10

  # Configuração das instâncias
  tipo_instancia = "t3.micro"
}
