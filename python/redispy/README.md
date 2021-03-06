 # Python redis-py
* Library: https://github.com/andymccurdy/redis-py 
* Library version : 3.5.3
* Library version: Python 3.7.3
* RS version: 6.0.6-35
* OSS Redis: 6.0.6

|     | Simple | Sentinel| Cluster|
|:--- |:---:   |:---:    |:---:   |
|     | Y      | Y       | Y*     |
| TLS | Y      | Y       | Y*     | 
* N/A : Not Available
* N/C : Not researched or checked

## Comments/Gotchas
* Cluster API supported by a separate extension to library  https://github.com/Grokzen/redis-py-cluster.
* Sentinel with TLS requires a workaround https://github.com/andymccurdy/redis-py/issues/1306
* ToDo: find way to verify ip address manually for Cluster/Sentinel TLS

## Prerequisite
Install Python3 for your platform https://www.python.org/downloads/

## Setup
Make sure you are in redispy directory and create virtual environment and activate it
```
 python3 -m venv venv
 . venv/bin/activate
```

Install the dependencies
```
 pip install -r requirements.txt 
 ```
## Run
Password is optional for all samples

### Simple
Start Redis instance. 
```
python simple.py redishost port password
```

### SimpleTLS
```
python simpletls.py redishost port password
```

### Sentinel 
```
python sentinel.py sentinelhost port service password
```

### SentinelTLS
```
python sentineltls.py sentinelhost port service password
```

### Cluster
Redis-py does not support cluster API. This sample uses an extension to redis-py. https://github.com/Grokzen/redis-py-cluster. 
Note that redis-cluster does not support the latest version of redis-py

deactivate previous venv by running `deactivate` and cd to **cluster**
```
 python3 -m venv venv
 . venv/bin/activate
```
Install the dependencies
```
pip install -r requirements.txt 
 ```
#### Cluster(normal)
```
python cluster.py node1 port password
```

#### Cluster TLS
```
python clustertls.py node1 port password
```
