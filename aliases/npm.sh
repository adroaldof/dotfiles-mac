#!/bin/bash

# Detect package manager based on lock files
function detect_package_manager() {
  if [ -f "yarn.lock" ]; then
    echo "yarn"
  elif [ -f "pnpm-lock.yaml" ]; then
    echo "pnpm"
  elif [ -f "package-lock.json" ]; then
    echo "npm"
  else
    # Default to npm if no lock file is found
    echo "npm"
  fi
}

# Get the package manager command
function get_pm_cmd() {
  local pm=$(detect_package_manager)
  case $pm in
    "yarn")
      echo "yarn"
      ;;
    "pnpm")
      echo "pnpm"
      ;;
    *)
      echo "npm"
      ;;
  esac
}

# Show which package manager is detected
function npm_info() {
  local pm=$(detect_package_manager)
  echo "Detected package manager: $pm"
  echo "Lock file status:"
  [ -f "yarn.lock" ] && echo "  ✓ yarn.lock found" || echo "  ✗ yarn.lock not found"
  [ -f "pnpm-lock.yaml" ] && echo "  ✓ pnpm-lock.yaml found" || echo "  ✗ pnpm-lock.yaml not found"
  [ -f "package-lock.json" ] && echo "  ✓ package-lock.json found" || echo "  ✗ package-lock.json not found"
}

# npm command
function n() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn add $@
      ;;
    "pnpm")
      pnpm add $@
      ;;
    *)
      npm i $@
      ;;
  esac
}

# npm add package and types
function nit() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn add $@ && yarn add -D @types/$@
      ;;
    "pnpm")
      pnpm add $@ && pnpm add -D @types/$@
      ;;
    *)
      npm i -s $@ && npm i -D @types/$@
      ;;
  esac
}

# npm add command
function ni() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn add $@
      ;;
    "pnpm")
      pnpm add $@
      ;;
    *)
      npm i -s $@
      ;;
  esac
}

# npm add dev command
function nid() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn add -D $@
      ;;
    "pnpm")
      pnpm add -D $@
      ;;
    *)
      npm i --only=dev $@
      ;;
  esac
}

# npm remove
function nrm() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn remove $@
      ;;
    "pnpm")
      pnpm remove $@
      ;;
    *)
      npm uninstall $@
      ;;
  esac
}

# npm start
function ns() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn start $@
      ;;
    "pnpm")
      pnpm start $@
      ;;
    *)
      npm start $@
      ;;
  esac
}

# npm dev
function nd() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn dev $@
      ;;
    "pnpm")
      pnpm dev $@
      ;;
    *)
      npm run dev $@
      ;;
  esac
}

# npm dev debug mode
function ndd() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn dev:debug $@
      ;;
    "pnpm")
      pnpm dev:debug $@
      ;;
    *)
      npm run dev:debug $@
      ;;
  esac
}

# npm run build
function nb() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn build
      ;;
    "pnpm")
      pnpm build
      ;;
    *)
      npm run build
      ;;
  esac
}

# npm run
function nr() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn $@
      ;;
    "pnpm")
      pnpm $@
      ;;
    *)
      npm run $@
      ;;
  esac
}

# npm lint
function nl() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn lint
      ;;
    "pnpm")
      pnpm lint
      ;;
    *)
      npm run lint
      ;;
  esac
}

# npm lint watch
function nlw() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn lint:watch
      ;;
    "pnpm")
      pnpm lint:watch
      ;;
    *)
      npm run lint:watch
      ;;
  esac
}

# npm run test
function nt() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn test $@
      ;;
    "pnpm")
      pnpm test $@
      ;;
    *)
      npm test $@
      ;;
  esac
}

# npm run test watch
function ntw() {
  local pm_cmd=$(get_pm_cmd)
  case $pm_cmd in
    "yarn")
      yarn test:watch
      ;;
    "pnpm")
      pnpm test:watch
      ;;
    *)
      npm run test:watch
      ;;
  esac
}
