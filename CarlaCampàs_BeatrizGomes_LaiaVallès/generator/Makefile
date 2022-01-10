# Run generator to generate problems, run Metric-FF and obtain results in csv file (one line per extension)
default: clean generate run csv

# Run Metric-FF on generated problems and generate results csv
run:
		python3 run.py

# Generate problem files
generate:
		python3 generateProblems.py

# Generate results csv
csv:
		python3 generateResultCSV.py

# Clean problem files, cache and results
clean:
		rm -rf g0 g1 g2 g3 g4
		rm -rf __pycache__
		rm -f timeResults.csv
