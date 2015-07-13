# ReCli - Terminal based Recomendation Engine

## Installation Process

1. Preparation

- install RVM or similar Tool
- Use Ruby Version (ruby-2.1.2)
- Greate a specific Gemset for this Repo (cli)
- get a Redis Server running

2. Clone the Repo
```
git clone https://github.com/pulni/recli.git
bundle install
```

## Run the App
1. Load the JSON File into the Recommendation Engine
```
recli load_data file="purchase_data.json"
```

2. Run Recommendations based on product names
```
recli recommendations_for "[Product Name]"
```

## How it works

- Each order/entry in the JSON File is loaded into the system, in the process the product array is flatterned.
- Currently the System is using the jaccard co-concurrence matrix to determine the similarity between the products.
- Last step is to the cache the results in Redis.