man invoke-command -ShowWindow

invoke-command -computername w10e01 -credential atxbs.pvt\jabels -scriptblock {get-process}