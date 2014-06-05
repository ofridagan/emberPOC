module.exports = (lineman) ->
  enableSass: true
  sass:
    options:
      bundleExec: true

  removeTasks:
    common: ["jst"]

  #  server:
  #      apiProxy:
  #        enabled: true
  #        port: 1337
