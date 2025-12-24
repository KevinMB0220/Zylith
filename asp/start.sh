#!/bin/bash

# Script para iniciar el ASP Server de Zylith

set -e

# Colores
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Zylith ASP Server ===${NC}"

# Configurar variables de entorno
export RPC_URL="${RPC_URL:-https://api.cartridge.gg/x/starknet/sepolia}"
export CONTRACT_ADDRESS="${CONTRACT_ADDRESS:-0x04b6a594dc9747caf1bd3d8933621366bbb7fbaefa1522174432611b577ae94d}"
export PORT="${PORT:-3000}"

echo -e "${YELLOW}Configuración:${NC}"
echo "  RPC_URL: $RPC_URL"
echo "  CONTRACT_ADDRESS: $CONTRACT_ADDRESS"
echo "  PORT: $PORT"
echo ""

# Verificar si está compilado
if [ ! -f "target/release/zylith-asp" ]; then
    echo -e "${YELLOW}Compilando...${NC}"
    cargo build --release
fi

echo -e "${GREEN}Iniciando ASP Server...${NC}"
echo -e "${BLUE}El servidor estará disponible en: http://localhost:$PORT${NC}"
echo ""

# Ejecutar el servidor
exec ./target/release/zylith-asp

