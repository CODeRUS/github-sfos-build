## GitHub-action for building Sailfish OS apps

For the available SailFish OS build target releases:

* https://hub.docker.com/r/coderus/sailfishos-platform-sdk/tags

or use `latest` to be always on the edge of the container updates.

---

### Usage

For Sailfish OS build target releases ≥ 4.1.0

  ```
  uses: coderus/github-sfos-build@master
      with:
        release: <release>
        arch: <arch>
  ```

For Sailfish OS build target releases < 4.1.0 

  ```
  uses: coderus/github-sfos-build@old-stable
      with:
        release: <release>
        arch: <arch>
  ```

For a complete example, see [here](https://github.com/storeman-developers/harbour-storeman/pull/170/files#diff-5c3fa597431eda03ac3339ae6bf7f05e1a50d6fc7333679ec38e21b337cb6721).
