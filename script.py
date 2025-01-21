import pandas as pd

# Load the data
data = pd.read_csv("data/random_data.csv")


# Print summary
print("Data Summary:")
print(data.describe())

# Show a sample
print("\nSample Data:")
print(data.head())


# Show a sample
print("\nSample Data:")
print(data.sample())
