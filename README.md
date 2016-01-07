# FNV Non-Cryptographic Hash Algorithm

## Overview

   FNV (Fowler/Noll/Vo) is a fast, non-cryptographic hash algorithm
   with good dispersion. FNV hashes are designed to be fast while
   maintaining a low collision rate. The FNV speed allows one to
   quickly hash lots of data while maintaining a reasonable collision
   rate. The high dispersion of the FNV hashes makes them well
   suited for hashing nearly identical strings such as URLs,
   hostnames, filenames, text, IP addresses, etc.

[![Build Status](https://travis-ci.org/samoconnor/FNVHash.jl.svg)](https://travis-ci.org/samoconnor/FNVHash.jl)

## Example

```julia
hash = fnv32(data)
hash = fnv16(data)
```


## References

 - [FNV Hash Home Page](http://www.isthe.com/chongo/tech/comp/fnv/)
 - [Wikipedia Page](https://en.wikipedia.org/wiki/Fowler–Noll–Vo_hash_function)
 - [IETF Draft](http://tools.ietf.org/html/draft-eastlake-fnv-03)
