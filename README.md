# py-couchdb

[![CI](https://github.com/histrio/py-couchdb/actions/workflows/main.yml/badge.svg?branch=no-py2)](https://github.com/histrio/py-couchdb/actions/workflows/main.yml)
![PyPI](https://img.shields.io/pypi/v/pycouchdb)
![PyPI - Downloads](https://img.shields.io/pypi/dm/pycouchdb)
[![Coverage Status](https://coveralls.io/repos/github/histrio/py-couchdb/badge.svg?branch=master)](https://coveralls.io/github/histrio/py-couchdb?branch=master)
[![Documentation Status](https://readthedocs.org/projects/pycouchdb/badge/?version=latest)](https://pycouchdb.readthedocs.io/en/latest/?badge=latest)



Modern pure python [CouchDB](https://couchdb.apache.org/) Client.

Currently there are several libraries in python to connect to couchdb. **Why one more?**
It's very simple.

All seems not be maintained, all libraries used standard Python libraries for http requests, and are not compatible with python3.



## Advantages of py-couchdb

- Use [requests](http://docs.python-requests.org/en/latest/) for http requests (much faster than the standard library)
- CouchDB 2.x and CouchDB 3.x compatible
- Also compatible with pypy.


Example:

```python
>>> import pycouchdb
>>> server = pycouchdb.Server("http://admin:admin@localhost:5984/")
>>> server.info()['version']
'1.2.1'
```


## Installation

To install py-couchdb, simply:

```bash
pip install https://github.com/feiloo/py-couchdb.git
```

## Documentation

Documentation is available at http://pycouchdb.readthedocs.org.


## Test

To test py-couchdb locally, start a couchdb with the url: http://admin:password@localhost:5984.

You can install [podman](https://podman.io/) and use `scripts/start_couchdb_container.sh` and `scripts/stop_couchdb_container.sh`.

Install [poetry](https://python-poetry.org/docs/basic-usage/#project-setup) and run `poetry install`.

Then simply run:

``` bash
pytest -v --doctest-modules --cov pycouchdb
```
