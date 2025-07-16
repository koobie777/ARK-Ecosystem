#!/bin/bash
# 🛰️ ARK THEMEING – ESSENTIAL MODULE

# ARK Banner
ark_banner() {
  echo -e "\e[38;5;45m🛸 $1\e[0m"
}

# ARK Error
ark_error() {
  echo -e "\e[38;5;196m⚠️ $1\nLocation: $2\nFix: $3\n\"$4\"\e[0m"
}

# ARK Quote
ark_quote() {
  if [ -f "$(dirname "$0")/quotes.txt" ]; then
    shuf -n 1 "$(dirname "$0")/quotes.txt"
  else
    echo "“May The ARK be with you, Commander.”"
  fi
}

# Mode handling (Cadet/Expert/Voyager/Admiral/Sentinel/Instructor/Custom)
ark_mode_prompt() {
  case "$ARK_MODE" in
    cadet)
      source "$(dirname "$0")/ark-themeing-systems-bay/cadet-theme/cadet-theme.sh"
      ark_cadet_banner
      ;;
    expert)
      source "$(dirname "$0")/ark-themeing-systems-bay/expert-theme/expert-theme.sh"
      ark_expert_banner
      ;;
    voyager)
      source "$(dirname "$0")/ark-themeing-systems-bay/voyager-theme/voyager-theme.sh"
      ark_voyager_banner
      ;;
    admiral)
      source "$(dirname "$0")/ark-themeing-systems-bay/admiral-theme/admiral-theme.sh"
      ark_admiral_banner
      ;;
    sentinel)
      source "$(dirname "$0")/ark-themeing-systems-bay/sentinel-theme/sentinel-theme.sh"
      ark_sentinel_banner
      ;;
    instructor)
      source "$(dirname "$0")/ark-themeing-systems-bay/instructor-theme/instructor-theme.sh"
      ark_instructor_banner
      ;;
    custom)
      source "$(dirname "$0")/ark-themeing-systems-bay/custom-theme/custom-theme.sh"
      ark_custom_banner
      ;;
    *)
      ark_banner "Default Mode: ARK protocol active."
      ;;
  esac
}
