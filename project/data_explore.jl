### A Pluto.jl notebook ###
# v0.12.3

using Markdown
using InteractiveUtils

# ╔═╡ e5257868-0ad9-11eb-1512-5737de09e0d8
begin
	using CSV, DataFrames, Plots, PlotThemes
	theme(:juno)
end

# ╔═╡ 648ecb24-0ada-11eb-1b02-5f5b8e8a2ec0
df = CSV.read("data/owid-covid-data.csv")

# ╔═╡ 9b5624bc-0adb-11eb-06a8-07b381a95236
begin
	nl = df[df.:location .== "Netherlands", [:location, :new_cases]]
end

# ╔═╡ 0dace56e-0adc-11eb-0228-0b0a3c6aec9b
plot(nl.:new_cases)

# ╔═╡ 3a7088da-0adc-11eb-207a-f3fad9c6047c
begin
	ind = df[df.:location .== "India", [:location, :new_cases, :date]]
	plot(ind.:new_cases)
end

# ╔═╡ d3cd7a38-0adc-11eb-2ede-45f1664109ba
begin
	countries = ["Netherlands", "Sweden", "United Kingdom", "India", "Brazil"]
	p = plot()
	for ctry in countries
		plot!(p, df[df.:location .== ctry, :new_cases], label=ctry, legend=:topleft)
	end
	p
end

# ╔═╡ 20110652-0ade-11eb-1a78-19c0acbf66c5
df2 = CSV.read("data/data_response_graphs_0.csv")

# ╔═╡ 87cb8808-0ade-11eb-3ae5-e9f954ff8e89
unique(df2.:Response_measure)

# ╔═╡ 959df2d6-0ade-11eb-1576-0f10ae579ef7
unique(df2.:Country)

# ╔═╡ Cell order:
# ╠═e5257868-0ad9-11eb-1512-5737de09e0d8
# ╠═648ecb24-0ada-11eb-1b02-5f5b8e8a2ec0
# ╠═9b5624bc-0adb-11eb-06a8-07b381a95236
# ╠═0dace56e-0adc-11eb-0228-0b0a3c6aec9b
# ╠═3a7088da-0adc-11eb-207a-f3fad9c6047c
# ╠═d3cd7a38-0adc-11eb-2ede-45f1664109ba
# ╠═20110652-0ade-11eb-1a78-19c0acbf66c5
# ╠═87cb8808-0ade-11eb-3ae5-e9f954ff8e89
# ╠═959df2d6-0ade-11eb-1576-0f10ae579ef7
