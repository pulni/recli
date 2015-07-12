# ReCli - Terminal based Recomendation Engine

## Installation Process

1. RVM

- Use Ruby Version (ruby-2.1.2)
- Greate a specific Gemset for this Repo (cli)

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