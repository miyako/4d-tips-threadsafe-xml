![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# 4d-tips-threadsafe-xml
replica of 4D v16 demo database

## modifications

* move processing to component
* increased test thresholds 
* different worker names based on process type
* codesign+notarytool (please download from releases)

```4d
$workerName:="Worker"+String($i%$nbWorker)+($preemptif ? "🚀" : "🚙")
```

<img src="https://github.com/user-attachments/assets/8b275210-18d8-4e54-8f3c-3debbbde6953" width=600 height=auto />)
