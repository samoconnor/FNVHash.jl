module FNVHash

export fnv32, fnv16

# References:
#   http://www.isthe.com/chongo/tech/comp/fnv/
#   https://en.wikipedia.org/wiki/Fowler–Noll–Vo_hash_function
#   http://tools.ietf.org/html/draft-eastlake-fnv-03

function fnv32(data::Array{UInt8,1})
    hash = 0x811C9DC5
    for c in data
        hash = (hash * 0x01000193) $ c
    end
    return hash
end

fnv32(s::AbstractString) = fnv32(Array{UInt8,1}(s))


fnv16(hash::UInt32) = UInt16(hash >>> 16) $ UInt16(hash & 0xFFFF)
fnv16(data) = fnv16(fnv32(data))


end # module FNVHash
