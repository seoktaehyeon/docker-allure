# Allure in Docker

`bxwill/allure:2.13.8`

## allure help doc

`docker run --rm -it bxwill/allure:2.13.8 allure`

```text
Usage: allure [options] [command] [command options]
  Options:
    --help
      Print commandline help.
    -q, --quiet
      Switch on the quiet mode.
      Default: false
    -v, --verbose
      Switch on the verbose mode.
      Default: false
    --version
      Print commandline version.
      Default: false
  Commands:
    generate      Generate the report
      Usage: generate [options] The directories with allure results
        Options:
          -c, --clean
            Clean Allure report directory before generating a new one.
            Default: false
          --config
            Allure commandline config path. If specified overrides values from 
            --profile and --configDirectory.
          --configDirectory
            Allure commandline configurations directory. By default uses 
            ALLURE_HOME directory.
          --profile
            Allure commandline configuration profile.
          -o, --report-dir, --output
            The directory to generate Allure report into.
            Default: allure-report

    serve      Serve the report
      Usage: serve [options] The directories with allure results
        Options:
          --config
            Allure commandline config path. If specified overrides values from 
            --profile and --configDirectory.
          --configDirectory
            Allure commandline configurations directory. By default uses 
            ALLURE_HOME directory.
          -h, --host
            This host will be used to start web server for the report.
          -p, --port
            This port will be used to start web server for the report.
            Default: 0
          --profile
            Allure commandline configuration profile.

    open      Open generated report
      Usage: open [options] The report directory
        Options:
          -h, --host
            This host will be used to start web server for the report.
          -p, --port
            This port will be used to start web server for the report.
            Default: 0

    plugin      Generate the report
      Usage: plugin [options]
        Options:
          --config
            Allure commandline config path. If specified overrides values from 
            --profile and --configDirectory.
          --configDirectory
            Allure commandline configurations directory. By default uses 
            ALLURE_HOME directory.
          --profile
            Allure commandline configuration profile.
```
