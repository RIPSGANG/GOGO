local http = require("socket.http")
url = "https://www.sia.aviation-civile.gouv.fr/dvd/eAIP_07_OCT_2021/Atlas-VAC/PDF_AIPparSSection/VAC/AD/AD-2.LFBI.pdf"
local body, code, headers, status = http.request(url)
if not body then error(ret_code) end
oaci_code = "LFBI"
local fname = string.format("AD-2.%s.pdf", oaci_code)
local f = assert(io.open(fname, 'wb')) -- open in "binary" mode
f:write(body)
f:close()
