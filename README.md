# Project using Ruby, Capybara and RSpec#

# Requisites
- Ruby
- Chrome and Firefox drivers
- Run "$bundle binstubs --all" for install dependencies

# Browsers
These project support Chrome, Firefox and Chrome headless locally. Also it can be run 
on Browserstack.

# Running the test
It use rake for run the tests:

- rake runTest['headless_chrome']   
- rake runTest['chrome'] 
- rake runTest['firefox'] 
- rake runTest['browserstack'] 

# CircleCI
Itis configured for run on CircleCI in this project: 
https://app.circleci.com/pipelines/github/hoscarh/saucedemo
