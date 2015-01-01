
PHP_ARG_ENABLE(pshark, whether to enable Packet Sniffing API,
[ --enable-pshark   Enable Packet Sniffing API])

if test "$PHP_PSHARK" != "no"; then
  AC_DEFINE(HAVE_PSHARK, 1, [Whether you have packet sniffing support])
  PHP_NEW_EXTENSION(pshark, php_pshark.c, $ext_shared)
fi