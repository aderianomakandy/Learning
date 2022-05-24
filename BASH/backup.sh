#!/bin/bash
#cd /home/test/BACKUP/
for DIR in * ;do

    fSaveDir="${DIR##*/}"
	zip . ${fSaveDir}.zip  ${fSaveDir}
#    if
#        tar cvf /home/test/BACKUPTAR/${fSaveDir}.tar  ${fSaveDir} ;
#        then
#          echo "tar-command for ${fSaveDir} successful"
#    else
#          echo "tar-command for ${fSaveDir} failed, aborting."
#    fi
done

