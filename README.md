# iMC, LLC Maintenance Container (imcllc/maintenance)

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

## Built With

* nginx:alpine (latest at time of build)

## Find Us

* [Github](https://github.com/imcllc/maintenance-page)

## Contributing

Please read [CONTRIBUTING.md](https://github.com/imcllc/maintenance-page/blob/main/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/imcllc/maintenance-page/tags).

## Authors

* **Ethan McGee** - *Initial work* - [ethantmcgee](https://github.com/ethantmcgee)

See also the list of [contributors](https://github.com/imcllc/maintenance-page/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/imcllc/maintenance-page/blob/main/LICENSE.md) file for details.
