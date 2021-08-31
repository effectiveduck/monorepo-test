const withTM = require("next-transpile-modules")(["@eratos/utilities"])

const withBundleAnalyzer = require("@next/bundle-analyzer")({
  enabled: process.env.ANALYZE === "true",
})

/** @type {import('next').NextConfig} */
module.exports = withBundleAnalyzer(
  withTM({
    reactStrictMode: true,
  })
)
