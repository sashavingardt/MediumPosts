import pandas as pd

with open('listings_flat.json') as f_input:
    df = pd.read_json(f_input)
    df.to_csv('listings.csv', index=False)
