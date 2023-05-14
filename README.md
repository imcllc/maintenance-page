# IAG Benefits, LLC Maintenane Container (iagllctech/maintenance)

This repository provides a mobile friendly maintenance page that appears for every url.

## Getting Started

The container image can be used as is with no modifications, but there are a few environment variables you can use to customize the maintenance page to your organization if desired.  Simply ensure traffic is forwarded to port 80.

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Environment Variables

| Variable Name | Description | Default |
| --- | --- | --- |
| LOGO | An environment variable to inject html to display your logo. | `<empty>` |
| SITE_NAME | Customize the maintenance to show your site name. | `We're` |
| TRY_AGAIN_TIME | Customize the maintenance page to tell the end user when to try again. | `15` |
| TRY_AGAIN_TIME_UNIT | Customize the maintenance page to tell the end user when to try again. | `minutes` |
| STATUS | An environment variable to inject html to direct end users to your official status page. | `<empty>` |

## Built With

* nginx:alpine (latest at time of build)

## Find Us

* [Github](https://github.com/iagtech/maintenance-page)

## Contributing

Please read [CONTRIBUTING.md](https://github.com/iagtech/maintenance-page/blob/main/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/iagtech/maintenance-page/tags). 

## Authors

* **Ethan McGee** - *Initial work* - [bulletshot60](https://github.com/bulletshot60)

See also the list of [contributors](https://github.com/iagtech/maintenance-page/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/iagtech/maintenance-page/blob/main/LICENSE.md) file for details.
