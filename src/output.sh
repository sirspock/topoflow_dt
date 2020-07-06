#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f outputs1.rti ]; then
    echo -e "$(c R)[error] The model has not generated the output outputs1.rti"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output outputs1.rti"
    mv outputs1.rti ${OUTPUTS1}
fi
if [ ! -f outputs1.zip ]; then
    echo -e "$(c R)[error] The model has not generated the output outputs1.zip"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output outputs1.zip"
    mv outputs1.zip ${OUTPUTS2}
fi
if [ ! -f outputs1.rts ]; then
    echo -e "$(c R)[error] The model has not generated the output outputs1.rts"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output outputs1.rts"
    mv outputs1.rts ${OUTPUTS3}
fi
