#!/bin/bash

# Declarações de variáveis
DIR_ORIG=/caminho/da/pasta/com/os/arquivos/pdf
DIR_DEST=/caminho/para/a/pasta/de/backup

# Inicializa o script
echo "Iniciando backup de arquivos em PDF..."

# Cria a pasta de backup, se não existir
if [ ! -d "$DIR_DEST" ]; then
  mkdir "$DIR_DEST"
fi

# Copia os arquivos em PDF para a pasta de backup
for arquivo in "$DIR_ORIG"/*.pdf; do
  echo "Copiando arquivo $arquivo..."
  cp "$arquivo" "$DIR_DEST"
done

# Exibe uma mensagem de conclusão
echo "Backup concluído!"
