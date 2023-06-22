[![Robot Framework and Appium Tests](https://github.com/Samska/robot-appium-tests/actions/workflows/robot.yml/badge.svg)](https://github.com/Samska/robot-appium-tests/actions/workflows/robot.yml)

# Robot + Appium mobile tests with SauceLabs integration

This is a study project using Robot Framework + Appium for mobile tests in Android and iOS devices. This project can be run via SauceLabs as long as you have an apk configured in SauceLabs and an Ondemand URL for your account.

## Getting Started

These instructions will get you a copy of the project up and running on your SauceLabs account for development and testing purposes.

## Prerequisites

- Git
- Python 3.x
- Pip
- Appium

## Installing

1. Clone the repository
2. Install the dependencies with `pip install -r requirements.txt`

## Running the tests via SauceLabs

1. Upload the app used in the tests of this project located at `app/android/demo-saucelabs.apk` and `app/ios/demo-saucelabs.ipa` to your SauceLabs account on `https://app.saucelabs.com/app-management`.
2. Change the value of the `${SAUCELABS_REMOTE_URL}` variable in the `ios_base_variables.robot` and `android_base_variables.robot` files to your [Ondemand URL](https://app.saucelabs.com/user-settings).
3. Run the tests through the command `robot --outputdir results tests`

## Continuous integration

This project has continuous integration with GitHub Actions. The configuration file is located at the path `.github/workflows/robot.yml`. The pipeline is scheduled to run at 00:00 every monday. With each execution, an artifact is generated with the test results and saved in that execution, as well as the results are published on the gh-pages and are available for consultation on this [page](https://samska.github.io/robot-appium-tests/report.html).