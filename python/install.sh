#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

$SCRIPT_DIR/make-venv.sh
source $SCRIPT_DIR/venv/bin/activate

# online install (pip & wheel)
pip install --upgrade pip wheel

# online install (other)
pip install -r $SCRIPT_DIR/requirements.in.txt
pip freeze > $SCRIPT_DIR/requirements.txt

# download packages -> wheels directory
pip wheel pip wheel -w $SCRIPT_DIR/wheels
pip wheel -r $SCRIPT_DIR/requirements.txt -w $SCRIPT_DIR/wheels
