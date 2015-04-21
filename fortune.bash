if command -v fortune > /dev/null; then
  echo -e "\e[1;32m$(fortune -as)\e[0m"
fi
