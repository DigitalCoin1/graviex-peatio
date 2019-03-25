RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
echo -e "${YELLOW}INICIANDO ${NC}DEPOSIT_COIN=5..."
bundle exec rake DEPOSIT_COIN=5 daemon:deposit_coin:start

echo -e "${YELLOW}INICIANDO DAEMON: ${NC} dividend..."
bundle exec rake daemon:dividend:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} matching..."
bundle exec rake daemon:matching:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} withdraw_coin..."
bundle exec rake daemon:withdraw_coin:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} notification..."
bundle exec rake daemon:notification:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} withdraw_audit..."
bundle exec rake daemon:withdraw_audit:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} market_data..."
bundle exec rake daemon:market_data:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} hot_wallets..."
bundle exec rake daemon:hot_wallets:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} payment_transaction..."
bundle exec rake daemon:payment_transaction:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} k..."
bundle exec rake daemon:k:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} websocket_api..."
bundle exec rake daemon:websocket_api:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} stats..."
bundle exec rake daemon:stats:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} pusher..."
bundle exec rake daemon:pusher:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} global_state..."
bundle exec rake daemon:global_state:start
echo -e "${YELLOW}INICIANDO DAEMON: ${NC} currencies_stats..."
bundle exec rake daemon:currencies_stats:start

echo -e "${YELLOW}INICIANDO ${NC}TRADE_EXECUTOR=5..."
bundle exec rake TRADE_EXECUTOR=5 daemon:trade_executor:start
echo -e "${YELLOW}INICIANDO ${NC}DEPOSIT_COIN_ADDRESS=4..."
bundle exec rake DEPOSIT_COIN_ADDRESS=8 daemon:deposit_coin_address:start
echo -e "${YELLOW}INICIANDO ${NC}ORDER_PROCESSOR=5..."
bundle exec rake ORDER_PROCESSOR=5 daemon:order_processor:start