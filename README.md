## Disable Transparent Huge Pages Cookbook

Disables transparent huge pages on Linux machines.

---

Tested only on Debian Jessie but should support most linux distributions that use systemd.

No tests written due to lack of time. If anyone wishes to help a PR is more than welcome!

## Usage

```ruby
include_recipe 'disable-thp::default'
```
