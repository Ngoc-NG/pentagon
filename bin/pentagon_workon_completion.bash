#!/usr/bin/env bash

function __pentagon_complete() {
    
    if [ "${1}" == "${3}" ]; then
      project="${2}"
    else
      project="${3}"
      inventory="${2}"
    fi

    COMPREPLY=()

    for proj in $(ls -d ${PENTAGON_PROJECTS_DIR}/${project}* 2> /dev/null); do
      if [ -d ${PENTAGON_PROJECTS_DIR}/${project} ]; then
       for inv in $(ls -d ${PENTAGON_PROJECTS_DIR}/${project}/${project}-infrastructure/inventory/${inventory}* 2> /dev/null); do
            COMPREPLY+=("$(basename ${inv})")
        done
      else
        COMPREPLY+=("$(basename $proj)")
      fi
    done
    
}

complete -F __pentagon_complete "pworkon"
