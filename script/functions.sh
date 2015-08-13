color_red() {
  echo "\033[0;31m"
}

color_yellow() {
  echo "\033[0;33m"
}

color_green() {
  echo "\033[0;32m"
}

color_reset() {
  echo "\033[0;39m"
}

info() {
  msg=$1; shift
  echo "$(color_green)[info]$(color_reset) $msg"
}

warn() {
  msg=$1; shift
  echo "$(color_yellow)[warn]$(color_reset) $msg"
}

error() {
  msg=$1; shift
  echo "$(color_red)[error]$(color_reset) $msg"
}

echo_colored() {
  color=$1; shift
  msg=$1; shift
  echo "$(color_$color)$msg$(color_reset)"
}
