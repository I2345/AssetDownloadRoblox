local httpasset = {}
local net = syn.request or httpget or http_request or requests

function httpasset:DownloadAsset(path, link)
    
    writefile(path, net({

        Url = link,
        Method = "GET",
    }).Body)

    return true

end
