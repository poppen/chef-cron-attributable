cron-attributable Cookbook
==========================
A wrapper cookbook for [cron cookbook](https://github.com/opscode-cookbooks/cron).

It enables to add cron.d files with node attributes. It is suitable with chef-solo.

Usage
----

### Default Installation

* Add `recipe[cron-attributable]` to your node's run list

### Example

```JSON
"cron_d": {
  "daily-usage-report": {
    "minute": 0,
    "hour": 23,
    "command": "/srv/app/scripts/daily_report",
    "user": "appuser"
  }
}
```

Attributes
----
TBD

Refer the recipe;-)
