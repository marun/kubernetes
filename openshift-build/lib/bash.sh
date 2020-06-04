# os::recent_bash returns a path to a recent bash
# binary.
#
# Globals:
#  None
# Arguments:
#  None
# Returns:
#  The path to a recent bash binary
function os::recent_bash() {
  local bash_path="$( which bash )"
  local bash_version
  bash_version="$( bash --version | head -n 1 | awk '{print $4}' )"
  if [[ ! "${bash_version}" =~ 5.* ]]; then
    recent_bash_path="${BASETMPDIR}/recent-bash"
    mkdir -p "${recent_bash_path}"
    pushd "${recent_bash_path}" > /dev/null
      if [[ ! -f "bash-5.0/bash" ]]; then
        curl -LO https://ftp.gnu.org/gnu/bash/bash-5.0.tar.gz
        tar xf bash-5.0.tar.gz
        pushd bash-5.0 > /dev/null
          ./configure
          make
          cp bash ..
        popd > /dev/null
      fi
      bash_path="$( pwd )/bash"
    popd > /dev/null
  fi
  echo "${bash_path}"
}
readonly -f os::recent_bash
