 SELECT chanid, channum, freqid, sourceid, callsign, name, xmltvid  FROM channel WHERE freqid IN (21,24,27,33,36,40,41,43,44,46,47,48,55,56)  ORDER BY (channum + 0),(freqid + 0);