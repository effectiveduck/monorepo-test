const withTM = require("next-transpile-modules")(["@eratos/utilities"])

/** @type {import('next').NextConfig} */
module.exports = withTM({
  reactStrictMode: true,
})
