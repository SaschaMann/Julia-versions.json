println("::set-output name=rebuild::true")

#=
using Dates
using HTTP
using TimeZones

function get_last_modified(url, headers=HTTP.Header[])
    r = HTTP.get(url, headers, retries=5, canonicalize_headers=true)

    local zdt
    for header in r.headers
        header[1] == "Last-Modified" && return ZonedDateTime(header[2], "e, d u y H:M:S Z")
    end

    error("Could not find Last-Modified header")
end

last_release  = get_last_modified("https://api.github.com/repos/julialang/julia/releases/latest", Dict(
    "Authorization" => "Bearer $(ENV["GITHUB_TOKEN"])",
    "Accept" => "application/vnd.github.v3+json",
))

# If the last release happened within the last week, set the rebuild output to true
if abs(now(localzone()) - last_release) < Week(1)
    println("::set-output name=rebuild::true")
end
=#
