GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
local_ip=$(hostname -I | awk '{print $1}')
echo -e "${GREEN}============================================================================${NC}"
echo -e "${GREEN}==================== Script Install GenieACS All In One. ===================${NC}"
echo -e "${GREEN}======================== NodeJS, MongoDB, GenieACS, ========================${NC}"
echo -e "${GREEN}===================== By LSTNetwork. Info 085322692888 =====================${NC}"
echo -e "${GREEN}============================================================================${NC}"
echo -e "${GREEN}Apakah anda ingin melanjutkan? (y/n)${NC}"
read confirmation
if [ "$confirmation" != "y" ]; then
    echo -e "${GREEN}Install dibatalkan. Tidak ada perubahan dalam server anda.${NC}"
    exit 1
fi
for ((i = 3; i >= 1; i--)); do
	sleep 1
    echo "Melanjutkan dalam $i. Tekan ctrl+c untuk membatalkan"
done

#Install TailScale
    curl -fsSL https://tailscale.com/install.sh | sh