# A helpful script to prepare the spectral density file for the C++ calculations



function specdens(Δσ2 = 4, ξ = 4, ωc = 2, dω=0.005)

    ω = 1e-12
    f = open("Jw_1", "w")

    for i in 1:80000
        J = (2π/(Δσ2))*ξ*ω*exp(-ω/ωc)
        write(f, "$ω $J \n")
        ω = ω + dω
    end
    close(f)
end

specdens()

