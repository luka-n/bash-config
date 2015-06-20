if [ -f ~/.last-backup ]; then
  echo "Last backup: $(date -f ~/.last-backup)"
else
  echo "Last backup: never/unknown"
fi
