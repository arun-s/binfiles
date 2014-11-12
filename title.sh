#!/bin/bash

echo setting title to \"$*\"
#title = ${*^^}
echo -ne "\033]0;${*^^}\007"
