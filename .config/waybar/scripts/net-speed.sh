#!/usr/bin/env bash
iface="wlan0" # поставь сюда свой интерфейс: ifconfig или ip a глянь
rx_prev=0
tx_prev=0

if [[ -f /tmp/netstat_prev ]]; then
  source /tmp/netstat_prev
fi

rx_cur=$(cat /sys/class/net/$iface/statistics/rx_bytes)
tx_cur=$(cat /sys/class/net/$iface/statistics/tx_bytes)

# Считаем скорость
rx_speed=$((rx_cur - rx_prev))
tx_speed=$((tx_cur - tx_prev))

# Переводим в человекочитаемый формат
human_read() {
  b=$1
  if ((b > 1048576)); then
    echo "$(awk "BEGIN {printf \"%.1fM\", $b/1048576}")"
  elif ((b > 1024)); then
    echo "$(awk "BEGIN {printf \"%.1fK\", $b/1024}")"
  else
    echo "${b}B"
  fi
}

rx_h=$(human_read $rx_speed)
tx_h=$(human_read $tx_speed)

# Сохраняем текущие значения для следующего запуска
echo "rx_prev=$rx_cur" >/tmp/netstat_prev
echo "tx_prev=$tx_cur" >>/tmp/netstat_prev

# Вывод для waybar
echo "{\"text\":\"↓${rx_h} ↑${tx_h}\",\"rx\":\"${rx_h}\",\"tx\":\"${tx_h}\"}"
