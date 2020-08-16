# Posts API for pastleo-js-lesson

## Setup

```bash
bundle install

cp config/database.example.yml config/database.yml
# edit config/database.yml if needed

rake db:create
rake db:migrate

# generate lorem posts by ffaker+zhconv
rake db:seed
```
