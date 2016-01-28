package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'config',
  srcs = ['configure'],
)

genrule(
  name = 'node-0.12.9',
  srcs = glob(['**/*.h', '**/*.cc', '**/*.js', '**/*.c', '**/*.py', '**/*.gyp', '**/*.gypi', '**/*.S', '**/*.s', '**/Makefile'], exclude=['tools/eslint/**']) + [':config'],
  outs = ['node'],
  executable = 1,
  cmd = 'pushd $$(dirname $(location :config)) && ./apply_patch.sh && ./configure && make -j16 node > /dev/null && popd && cp $$(dirname $(location :config))/out/Release/node $@',
)
