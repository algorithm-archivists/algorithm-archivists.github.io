function conv_lin(signal1::Array{Complex{Float64},1},
                  signal2::Array{Complex{Float64},1})
    n = length(signal1) + length(signal2)
    out = Array{Complex{Float64},1}(undef,n)
    sum = 0

    for i = 1:n-1
        for j = 1:i-1
            if j < length(signal1)
                println(j, '\t', i, '\t', i-j)
                sum += signal1[j] * signal2[i-j]
            end
        end
        out[i] = sum
        sum = 0
    end

    return out
end

function conv_fft(signal1::Array{Complex{Float64},1},
                  signal2::Array{Complex{Float64},1})
    return ifft(fft(signal1).*fft(signal2))
end

