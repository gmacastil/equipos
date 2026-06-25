# Infraestructura como Código - Bucket S3 Equipos

Este directorio contiene la configuración de Terraform para crear un bucket S3 en AWS con las siguientes características:

## Características del Bucket

- **Nombre**: equipos
- **Versionamiento**: Deshabilitado
- **Encriptación**: Deshabilitada
- **Acceso**: Público
- **Propósito**: General

## Estructura

```
iac/
├── main.tf                    # Configuración principal y provider
├── variables.tf               # Definición de variables
├── terraform.tfvars          # Valores de variables
├── outputs.tf                # Outputs del módulo principal
├── modules/
│   └── s3-bucket/
│       ├── main.tf           # Recursos del bucket S3
│       ├── variables.tf      # Variables del módulo
│       └── outputs.tf        # Outputs del módulo
└── README.md                 # Este archivo
```

## Prerrequisitos

1. Terraform >= 1.0
2. AWS CLI configurado con credenciales
3. Permisos de IAM para crear buckets S3

## Uso

### Inicializar Terraform

```bash
cd iac
terraform init
```

### Planificar cambios

```bash
terraform plan
```

### Aplicar cambios

```bash
terraform apply
```

### Destruir recursos

```bash
terraform destroy
```

## Variables

Puedes personalizar las variables en el archivo `terraform.tfvars`:

- `aws_region`: Región de AWS (default: us-east-1)
- `bucket_name`: Nombre del bucket S3
- `environment`: Ambiente de despliegue (dev, prod, etc.)
- `project_name`: Nombre del proyecto

## Outputs

Después de aplicar, obtendrás:

- `bucket_id`: ID del bucket creado
- `bucket_arn`: ARN del bucket
- `bucket_domain_name`: Nombre de dominio del bucket
- `bucket_regional_domain_name`: Nombre de dominio regional del bucket

## Notas de Seguridad

⚠️ **ADVERTENCIA**: Este bucket está configurado con acceso público. Asegúrate de que esto sea necesario para tu caso de uso y considera las implicaciones de seguridad.
