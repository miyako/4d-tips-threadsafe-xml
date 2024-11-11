![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# 4d-tips-threadsafe-xml
replica of 4D v16 demo database

## modifications

* move processing to component
* increased test thresholds 
* different worker names based on process type

```4d
$workerName:="Worker"+String($i%$nbWorker)+($preemptif ? "🚀" : "🚙")
```

<img src="https://github.com/user-attachments/assets/e19260db-972e-4cb8-a9e0-81982491c48e" width=600 height=auto />)
