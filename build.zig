const std = @import("std");

const config_linux_glibc =
    "/* Minimal handcrafted config for cross-building socat with zig (glibc). */\n" ++
    "#ifndef __config_h_included\n" ++
    "#define __config_h_included 1\n\n" ++
    "#define STDC_HEADERS 1\n" ++
    "#define TIME_WITH_SYS_TIME 1\n" ++
    "#define HAVE_SYS_WAIT_H 1\n" ++
    "#define HAVE_SYS_TYPES_H 1\n" ++
    "#define HAVE_SYS_SOCKET_H 0\n" ++
    "#define HAVE_SYS_UIO_H 1\n" ++
    "#define HAVE_SYS_STAT_H 1\n" ++
    "#define HAVE_SYS_UN_H 1\n" ++
    "#define HAVE_SYS_IOCTL_H 1\n" ++
    "#define HAVE_SYS_TIME_H 1\n" ++
    "#define HAVE_SYSLOG_H 1\n" ++
    "#define HAVE_SYS_SELECT_H 1\n" ++
    "#define HAVE_SYS_FILE_H 1\n" ++
    "#define HAVE_SYS_UTSNAME_H 1\n" ++
    "#define HAVE_NETDB_H 1\n" ++
    "#define HAVE_NETINET_IN_H 1\n" ++
    "#define HAVE_NETINET_IN_SYSTM_H 1\n" ++
    "#define HAVE_NETINET_IP_H 1\n" ++
    "#define HAVE_NETINET_TCP_H 1\n" ++
    "#define HAVE_ARPA_INET_H 1\n" ++
    "#define HAVE_ARPA_INET_H 1\n" ++
    "#define HAVE_ARPA_NAMESER_H 1\n" ++
    "#define HAVE_FCNTL_H 1\n" ++
    "#define HAVE_LIMITS_H 1\n" ++
    "#define HAVE_STRINGS_H 1\n" ++
    "#define HAVE_UNISTD_H 1\n" ++
    "#define HAVE_POLL_H 1\n" ++
    "#define HAVE_SYS_POLL_H 1\n" ++
    "#define HAVE_STDBOOL_H 0\n" ++
    "#define HAVE_INTTYPES_H 1\n" ++
    "#define HAVE_STDINT_H 1\n" ++
    "#define HAVE_REGEX_H 1\n" ++
    "#define HAVE_TERMIOS_H 1\n" ++
    "#define HAVE_RESOLV_H 1\n" ++
    "#define HAVE_NET_IF_H 1\n" ++
    "#define HAVE_LINUX_IF_PACKET_H 1\n" ++
    "#define HAVE_NETINET_IF_ETHER_H 1\n" ++
    "#define HAVE_PWD_H 1\n" ++
    "#define HAVE_GRP_H 1\n\n" ++
    "#define HAVE_STRFTIME 1\n" ++
    "#define HAVE_SELECT 1\n" ++
    "#define HAVE_PSELECT 1\n" ++
    "#define HAVE_POLL 1\n" ++
    "#define HAVE_SOCKET 1\n" ++
    "#define HAVE_INET_ATON 1\n" ++
    "#define HAVE_GETHOSTBYNAME 1\n" ++
    "#define HAVE_GETADDRINFO 1\n" ++
    "#define HAVE_GETPROTOBYNUMBER 1\n" ++
    "#define HAVE_GETPROTOBYNUMBER_R 1\n" ++
    "#define HAVE_HSTRERROR 1\n" ++
    "#define HAVE_PROTOTYPE_HSTRERROR 1\n" ++
    "#define HAVE_CLOCK_GETTIME 1\n" ++
    "#define HAVE_NANOSLEEP 1\n" ++
    "#define HAVE_UNAME 1\n" ++
    "#define HAVE_GETPGID 1\n" ++
    "#define HAVE_GETSID 1\n" ++
    "#define HAVE_PUTENV 1\n" ++
    "#define HAVE_SETGROUPS 1\n" ++
    "#define HAVE_GETRESUID 1\n" ++
    "#define HAVE_GETRESGID 1\n" ++
    "#define HAVE_STRTOLL 1\n" ++
    "#define HAVE_STRTOD 1\n" ++
    "#define HAVE_STRTOL 1\n" ++
    "#define HAVE_STRTOUL 1\n" ++
    "#define HAVE_INET_NTOP 1\n" ++
    "#define HAVE_IF_NAMETOINDEX 1\n" ++
    "#define HAVE_PTSNAME 1\n" ++
    "#define HAVE_OPENPTY 1\n" ++
    "#define HAVE_GETPWNAM 1\n" ++
    "#define HAVE_GETPWUID 1\n" ++
    "#define HAVE_GETGRNAM 1\n" ++
    "#define HAVE_INITGROUPS 1\n" ++
    "#define HAVE_SIGACTION 1\n\n" ++
    "#define HAVE_PROTOTYPE_LIB_posix_memalign 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strdup 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strerror 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strstr 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strndup 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_memrchr 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_if_indextoname 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_gettimeofday 1\n\n" ++
    "#define HAVE_DECL_ENVIRON 1\n" ++
    "#define HAVE_VAR_ENVIRON 1\n\n" ++
    "#define WITH_HELP 1\n" ++
    "#define WITH_STATS 1\n" ++
    "#define WITH_STDIO 1\n" ++
    "#define WITH_FDNUM 1\n" ++
    "#define WITH_FILE 1\n" ++
    "#define WITH_GOPEN 1\n" ++
    "#define WITH_CREAT 1\n" ++
    "#define WITH_PIPE 1\n" ++
    "#define WITH_UNIX 1\n" ++
    "#define WITH_INTERFACE 1\n" ++
    "#define WITH_IP4 1\n" ++
    "#define WITH_IP6 1\n" ++
    "#define WITH_TCP 1\n" ++
    "#define WITH_UDP 1\n" ++
    "#define WITH_RAWIP 0\n" ++
    "#define WITH_SCTP 0\n" ++
    "#define WITH_DCCP 0\n" ++
    "#define WITH_UDPLITE 0\n" ++
    "#define WITH_SOCKS4 0\n" ++
    "#define WITH_SOCKS4A 0\n" ++
    "#define WITH_SOCKS5 0\n" ++
    "#define WITH_PROXY 0\n" ++
    "#define WITH_GENERICSOCKET 0\n" ++
    "#define WITH_SOCKETPAIR 1\n" ++
    "#define WITH_LISTEN 1\n" ++
    "#define WITH_VSOCK 0\n" ++
    "#define WITH_PTY 0\n" ++
    "#define WITH_READLINE 0\n" ++
    "#define WITH_OPENSSL 0\n" ++
    "#define WITH_TCPWRAP 0\n" ++
    "#define WITH_POSIXMQ 0\n" ++
    "#define WITH_NAMESPACES 0\n" ++
    "#define WITH_FS 0\n" ++
    "#define WITH_TUN 0\n" ++
    "#define WITH_STALL 1\n" ++
    "#define WITH_TEXT 1\n" ++
    "#define WITH_STREAMS 1\n\n" ++
    "#define WITH_DEFAULT_IPV 4\n" ++
    "#define BUILD_DATE \"custom\"\n\n" ++
    "#define HAVE_STRUCT_TIMESPEC 1\n" ++
    "#define HAVE_STRUCT_LINGER 1\n" ++
    "#define HAVE_STRUCT_IP_MREQ 1\n" ++
    "#define HAVE_STRUCT_IP_MREQN 0\n\n" ++
    "#define HAVE_TYPE_SOCKLEN 1\n" ++
    "#define HAVE_TYPE_UINT8 1\n" ++
    "#define HAVE_TYPE_UINT16 1\n" ++
    "#define HAVE_TYPE_UINT32 1\n" ++
    "#define HAVE_TYPE_SA_FAMILY_T 1\n\n" ++
    "#ifndef _GNU_SOURCE\n" ++
    "#define _GNU_SOURCE 1\n" ++
    "#endif\n\n" ++
    "#endif /* __config_h_included */\n";

const config_linux_musl =
    "/* Minimal handcrafted config for cross-building socat with zig (musl). */\n" ++
    "#ifndef __config_h_included\n" ++
    "#define __config_h_included 1\n\n" ++
    "#define STDC_HEADERS 1\n" ++
    "#define TIME_WITH_SYS_TIME 1\n" ++
    "#define HAVE_SYS_WAIT_H 1\n" ++
    "#define HAVE_SYS_TYPES_H 1\n" ++
    "#define HAVE_SYS_SOCKET_H 0\n" ++
    "#define HAVE_SYS_UIO_H 1\n" ++
    "#define HAVE_SYS_STAT_H 1\n" ++
    "#define HAVE_SYS_UN_H 1\n" ++
    "#define HAVE_SYS_IOCTL_H 1\n" ++
    "#define HAVE_SYS_TIME_H 1\n" ++
    "#define HAVE_SYSLOG_H 1\n" ++
    "#define HAVE_SYS_SELECT_H 1\n" ++
    "#define HAVE_SYS_FILE_H 1\n" ++
    "#define HAVE_SYS_UTSNAME_H 1\n" ++
    "#define HAVE_NETDB_H 1\n" ++
    "#define HAVE_NETINET_IN_H 1\n" ++
    "#define HAVE_NETINET_IN_SYSTM_H 1\n" ++
    "#define HAVE_NETINET_IP_H 1\n" ++
    "#define HAVE_NETINET_TCP_H 1\n" ++
    "#define HAVE_ARPA_NAMESER_H 1\n" ++
    "#define HAVE_FCNTL_H 1\n" ++
    "#define HAVE_LIMITS_H 1\n" ++
    "#define HAVE_STRINGS_H 1\n" ++
    "#define HAVE_UNISTD_H 1\n" ++
    "#define HAVE_POLL_H 1\n" ++
    "#define HAVE_SYS_POLL_H 1\n" ++
    "#define HAVE_STDBOOL_H 0\n" ++
    "#define HAVE_INTTYPES_H 1\n" ++
    "#define HAVE_STDINT_H 1\n" ++
    "#define HAVE_REGEX_H 1\n" ++
    "#define HAVE_TERMIOS_H 1\n" ++
    "#define HAVE_RESOLV_H 1\n" ++
    "#define HAVE_NET_IF_H 1\n" ++
    "#define HAVE_LINUX_IF_PACKET_H 1\n" ++
    "#define HAVE_NETINET_IF_ETHER_H 1\n" ++
    "#define HAVE_PWD_H 1\n" ++
    "#define HAVE_GRP_H 1\n\n" ++
    "#define HAVE_STRFTIME 1\n" ++
    "#define HAVE_SELECT 1\n" ++
    "#define HAVE_PSELECT 1\n" ++
    "#define HAVE_POLL 1\n" ++
    "#define HAVE_SOCKET 1\n" ++
    "#define HAVE_INET_ATON 1\n" ++
    "#define HAVE_GETHOSTBYNAME 1\n" ++
    "#define HAVE_GETADDRINFO 1\n" ++
    "#define HAVE_GETPROTOBYNUMBER 1\n" ++
    "#define HAVE_GETPROTOBYNUMBER_R 0\n" ++
    "#define HAVE_HSTRERROR 1\n" ++
    "#define HAVE_PROTOTYPE_HSTRERROR 1\n" ++
    "#define HAVE_CLOCK_GETTIME 1\n" ++
    "#define HAVE_NANOSLEEP 1\n" ++
    "#define HAVE_UNAME 1\n" ++
    "#define HAVE_GETPGID 1\n" ++
    "#define HAVE_GETSID 1\n" ++
    "#define HAVE_PUTENV 1\n" ++
    "#define HAVE_SETGROUPS 1\n" ++
    "#define HAVE_GETRESUID 1\n" ++
    "#define HAVE_GETRESGID 1\n" ++
    "#define HAVE_STRTOLL 1\n" ++
    "#define HAVE_STRTOD 1\n" ++
    "#define HAVE_STRTOL 1\n" ++
    "#define HAVE_STRTOUL 1\n" ++
    "#define HAVE_INET_NTOP 1\n" ++
    "#define HAVE_IF_NAMETOINDEX 1\n" ++
    "#define HAVE_PTSNAME 1\n" ++
    "#define HAVE_OPENPTY 1\n" ++
    "#define HAVE_GETPWNAM 1\n" ++
    "#define HAVE_GETPWUID 1\n" ++
    "#define HAVE_GETGRNAM 1\n" ++
    "#define HAVE_INITGROUPS 1\n" ++
    "#define HAVE_SIGACTION 1\n\n" ++
    "#define HAVE_PROTOTYPE_LIB_posix_memalign 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strdup 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strerror 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strstr 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strndup 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_memrchr 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_if_indextoname 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_gettimeofday 1\n\n" ++
    "#define HAVE_DECL_ENVIRON 1\n" ++
    "#define HAVE_VAR_ENVIRON 1\n\n" ++
    "#define WITH_HELP 1\n" ++
    "#define WITH_STATS 1\n" ++
    "#define WITH_STDIO 1\n" ++
    "#define WITH_FDNUM 1\n" ++
    "#define WITH_FILE 1\n" ++
    "#define WITH_GOPEN 1\n" ++
    "#define WITH_CREAT 1\n" ++
    "#define WITH_PIPE 1\n" ++
    "#define WITH_UNIX 1\n" ++
    "#define WITH_INTERFACE 1\n" ++
    "#define WITH_IP4 1\n" ++
    "#define WITH_IP6 1\n" ++
    "#define WITH_TCP 1\n" ++
    "#define WITH_UDP 1\n" ++
    "#define WITH_RAWIP 0\n" ++
    "#define WITH_SCTP 0\n" ++
    "#define WITH_DCCP 0\n" ++
    "#define WITH_UDPLITE 0\n" ++
    "#define WITH_SOCKS4 0\n" ++
    "#define WITH_SOCKS4A 0\n" ++
    "#define WITH_SOCKS5 0\n" ++
    "#define WITH_PROXY 0\n" ++
    "#define WITH_GENERICSOCKET 0\n" ++
    "#define WITH_SOCKETPAIR 1\n" ++
    "#define WITH_LISTEN 1\n" ++
    "#define WITH_VSOCK 0\n" ++
    "#define WITH_PTY 0\n" ++
    "#define WITH_READLINE 0\n" ++
    "#define WITH_OPENSSL 0\n" ++
    "#define WITH_TCPWRAP 0\n" ++
    "#define WITH_POSIXMQ 0\n" ++
    "#define WITH_NAMESPACES 0\n" ++
    "#define WITH_FS 0\n" ++
    "#define WITH_TUN 0\n" ++
    "#define WITH_STALL 1\n" ++
    "#define WITH_TEXT 1\n" ++
    "#define WITH_STREAMS 1\n\n" ++
    "#define WITH_DEFAULT_IPV 4\n" ++
    "#define BUILD_DATE \"custom\"\n\n" ++
    "#define HAVE_STRUCT_TIMESPEC 1\n" ++
    "#define HAVE_STRUCT_LINGER 1\n" ++
    "#define HAVE_STRUCT_GROUP_SOURCE_REQ 1\n" ++
    "#define HAVE_STRUCT_IP_MREQ 1\n" ++
    "#define HAVE_STRUCT_IP_MREQN 1\n" ++
    "#define HAVE_STRUCT_IP_MREQ_SOURCE 1\n\n" ++
    "#define HAVE_TYPE_SOCKLEN 1\n" ++
    "#define HAVE_TYPE_UINT8 1\n" ++
    "#define HAVE_TYPE_UINT16 1\n" ++
    "#define HAVE_TYPE_UINT32 1\n" ++
    "#define HAVE_TYPE_SA_FAMILY_T 1\n\n" ++
    "#ifndef _GNU_SOURCE\n" ++
    "#define _GNU_SOURCE 1\n" ++
    "#endif\n\n" ++
    "#endif /* __config_h_included */\n";

const config_windows =
    "/* Minimal handcrafted config for cross-building socat with zig (Windows). */\n" ++
    "#ifndef __config_h_included\n" ++
    "#define __config_h_included 1\n\n" ++
    "#define STDC_HEADERS 1\n" ++
    "#define TIME_WITH_SYS_TIME 1\n" ++
    "#define HAVE_SYS_WAIT_H 0\n" ++
    "#define HAVE_SYS_TYPES_H 1\n" ++
    "#define HAVE_SYS_SOCKET_H 0\n" ++
    "#define HAVE_SYS_UIO_H 0\n" ++
    "#define HAVE_SYS_STAT_H 1\n" ++
    "#define HAVE_SYS_UN_H 0\n" ++
    "#define HAVE_SYS_IOCTL_H 0\n" ++
    "#define HAVE_SYS_TIME_H 1\n" ++
    "#define HAVE_SYSLOG_H 1\n" ++
    "#define HAVE_SYS_SELECT_H 1\n" ++
    "#define HAVE_SYS_FILE_H 0\n" ++
    "#define HAVE_SYS_UTSNAME_H 1\n" ++
    "#define HAVE_NETDB_H 0\n" ++
    "#define HAVE_NETINET_IN_H 0\n" ++
    "#define HAVE_NETINET_IN_SYSTM_H 0\n" ++
    "#define HAVE_NETINET_IP_H 0\n" ++
    "#define HAVE_NETINET_TCP_H 0\n" ++
    "#define HAVE_ARPA_INET_H 1\n" ++
    "#define HAVE_ARPA_NAMESER_H 0\n" ++
    "#define HAVE_FCNTL_H 1\n" ++
    "#define HAVE_LIMITS_H 1\n" ++
    "#define HAVE_STRINGS_H 0\n" ++
    "#define HAVE_UNISTD_H 0\n" ++
    "#define HAVE_POLL_H 1\n" ++
    "#define HAVE_SYS_POLL_H 0\n" ++
    "#define HAVE_STDBOOL_H 1\n" ++
    "#define HAVE_INTTYPES_H 1\n" ++
    "#define HAVE_STDINT_H 1\n" ++
    "#define HAVE_REGEX_H 0\n" ++
    "#define HAVE_TERMIOS_H 0\n" ++
    "#define HAVE_RESOLV_H 0\n" ++
    "#define HAVE_NET_IF_H 0\n" ++
    "#define HAVE_LINUX_IF_PACKET_H 0\n" ++
    "#define HAVE_NETINET_IF_ETHER_H 0\n" ++
    "#define HAVE_PWD_H 0\n" ++
    "#define HAVE_GRP_H 0\n\n" ++
    "#define HAVE_STRFTIME 1\n" ++
    "#define HAVE_SELECT 1\n" ++
    "#define HAVE_PSELECT 0\n" ++
    "#define HAVE_POLL 0\n" ++
    "#define HAVE_SOCKET 1\n" ++
    "#define HAVE_INET_ATON 0\n" ++
    "#define HAVE_GETHOSTBYNAME 1\n" ++
    "#define HAVE_GETADDRINFO 1\n" ++
    "#define HAVE_GETPROTOBYNUMBER 0\n" ++
    "#define HAVE_GETPROTOBYNUMBER_R 0\n" ++
    "#define HAVE_HSTRERROR 0\n" ++
    "#define HAVE_PROTOTYPE_HSTRERROR 0\n" ++
    "#define HAVE_CLOCK_GETTIME 0\n" ++
    "#define HAVE_NANOSLEEP 0\n" ++
    "#define HAVE_UNAME 0\n" ++
    "#define HAVE_GETPGID 0\n" ++
    "#define HAVE_GETSID 0\n" ++
    "#define HAVE_PUTENV 1\n" ++
    "#define HAVE_SETGROUPS 0\n" ++
    "#define HAVE_GETRESUID 0\n" ++
    "#define HAVE_GETRESGID 0\n" ++
    "#define HAVE_STRTOLL 1\n" ++
    "#define HAVE_STRTOD 1\n" ++
    "#define HAVE_STRTOL 1\n" ++
    "#define HAVE_STRTOUL 1\n" ++
    "#define HAVE_INET_NTOP 1\n" ++
    "#define HAVE_IF_NAMETOINDEX 0\n" ++
    "#define HAVE_PTSNAME 0\n" ++
    "#define HAVE_OPENPTY 0\n" ++
    "#define HAVE_GETPWNAM 1\n" ++
    "#define HAVE_GETPWUID 1\n" ++
    "#define HAVE_GETGRNAM 1\n" ++
    "#define HAVE_INITGROUPS 1\n" ++
    "#define HAVE_SIGACTION 1\n\n" ++
    "#define HAVE_PROTOTYPE_LIB_posix_memalign 0\n" ++
    "#define HAVE_PROTOTYPE_LIB_strdup 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strerror 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strstr 1\n" ++
    "#define HAVE_PROTOTYPE_LIB_strndup 0\n" ++
    "#define HAVE_PROTOTYPE_LIB_memrchr 0\n" ++
    "#define HAVE_PROTOTYPE_LIB_if_indextoname 0\n" ++
    "#define HAVE_PROTOTYPE_LIB_gettimeofday 1\n\n" ++
    "#define HAVE_DECL_ENVIRON 0\n" ++
    "#define HAVE_VAR_ENVIRON 0\n\n" ++
    "#define WITH_HELP 1\n" ++
    "#define WITH_STATS 1\n" ++
    "#define WITH_STDIO 1\n" ++
    "#define WITH_FDNUM 0\n" ++
    "#define WITH_FILE 1\n" ++
    "#define WITH_GOPEN 0\n" ++
    "#define WITH_CREAT 1\n" ++
    "#define WITH_PIPE 0\n" ++
    "#define WITH_UNIX 0\n" ++
    "#define WITH_INTERFACE 0\n" ++
    "#define WITH_IP4 1\n" ++
    "#define WITH_IP6 0\n" ++
    "#define WITH_TCP 1\n" ++
    "#define WITH_UDP 1\n" ++
    "#define WITH_RAWIP 0\n" ++
    "#define WITH_SCTP 0\n" ++
    "#define WITH_DCCP 0\n" ++
    "#define WITH_UDPLITE 0\n" ++
    "#define WITH_SOCKS4 0\n" ++
    "#define WITH_SOCKS4A 0\n" ++
    "#define WITH_SOCKS5 0\n" ++
    "#define WITH_PROXY 0\n" ++
    "#define WITH_GENERICSOCKET 0\n" ++
    "#define WITH_SOCKETPAIR 0\n" ++
    "#define WITH_LISTEN 1\n" ++
    "#define WITH_VSOCK 0\n" ++
    "#define WITH_PTY 0\n" ++
    "#define WITH_READLINE 0\n" ++
    "#define WITH_OPENSSL 0\n" ++
    "#define WITH_TCPWRAP 0\n" ++
    "#define WITH_POSIXMQ 0\n" ++
    "#define WITH_NAMESPACES 0\n" ++
    "#define WITH_FS 0\n" ++
    "#define WITH_TUN 0\n" ++
    "#define WITH_STALL 1\n" ++
    "#define WITH_TEXT 1\n" ++
    "#define WITH_STREAMS 1\n\n" ++
    "#define WITH_DEFAULT_IPV 4\n" ++
    "#define BUILD_DATE \"custom\"\n\n" ++
    "#define HAVE_STRUCT_TIMESPEC 1\n" ++
    "#define HAVE_STRUCT_LINGER 1\n" ++
    "#define HAVE_STRUCT_IP_MREQ 1\n" ++
    "#define HAVE_STRUCT_IP_MREQN 0\n\n" ++
    "#define HAVE_TYPE_SOCKLEN 1\n" ++
    "#define HAVE_TYPE_UINT8 1\n" ++
    "#define HAVE_TYPE_UINT16 1\n" ++
    "#define HAVE_TYPE_UINT32 1\n" ++
    "#define HAVE_TYPE_SA_FAMILY_T 1\n" ++
    "#define HAVE_TYPE_BOOL 1\n" ++
    "#define HAVE_BASIC_UID_T 3\n" ++
    "#define HAVE_BASIC_GID_T 3\n" ++
    "#define HAVE_BASIC_PID_T 3\n" ++
    "#define HAVE_BASIC_MODE_T 3\n" ++
    "#define HAVE_BASIC_OFF_T 5\n" ++
    "#define HAVE_BASIC_OFF64_T 7\n" ++
    "#define HAVE_BASIC_SIZE_T 8\n" ++
    "#define HAVE_BASIC_SOCKLEN_T 3\n\n" ++
    "#define HAVE_FORMAT_Z 1\n\n" ++
    "#if defined(_WIN32)\n" ++
    "#include <stddef.h>\n" ++
    "#include <winsock2.h>\n" ++
    "#include <ws2tcpip.h>\n" ++
    "#include <sys/types.h>\n" ++
    "#include <sys/stat.h>\n" ++
    "#include <fcntl.h>\n" ++
    "#include <time.h>\n" ++
    "#include <errno.h>\n" ++
    "#include <signal.h>\n" ++
    "#include <stdarg.h>\n" ++
    "#include <io.h>\n" ++
    "#if defined(__clang__)\n" ++
    "#pragma clang diagnostic ignored \"-Wparentheses\"\n" ++
    "#pragma clang diagnostic ignored \"-Wformat\"\n" ++
    "#endif\n" ++
    "#ifndef _SOCKLEN_T_DEFINED\n" ++
    "typedef int socklen_t;\n" ++
    "#define _SOCKLEN_T_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _PID_T_DEFINED\n" ++
    "typedef long long pid_t;\n" ++
    "#define _PID_T_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _OFF_T_DEFINED\n" ++
    "typedef long long off_t;\n" ++
    "#define _OFF_T_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef S_IFLNK\n" ++
    "#define S_IFLNK 0120000\n" ++
    "#endif\n" ++
    "#ifndef S_IFSOCK\n" ++
    "#define S_IFSOCK 0140000\n" ++
    "#endif\n" ++
    "#ifndef O_NOCTTY\n" ++
    "#define O_NOCTTY 0\n" ++
    "#endif\n" ++
    "#ifndef F_GETFD\n" ++
    "#define F_GETFD 1\n" ++
    "#endif\n" ++
    "#ifndef F_SETFD\n" ++
    "#define F_SETFD 2\n" ++
    "#endif\n" ++
    "#ifndef F_GETFL\n" ++
    "#define F_GETFL 3\n" ++
    "#endif\n" ++
    "#ifndef F_SETFL\n" ++
    "#define F_SETFL 4\n" ++
    "#endif\n" ++
    "#ifndef F_SETLK\n" ++
    "#define F_SETLK 5\n" ++
    "#endif\n" ++
    "#ifndef F_SETLKW\n" ++
    "#define F_SETLKW 6\n" ++
    "#endif\n" ++
    "#ifndef F_RDLCK\n" ++
    "#define F_RDLCK 1\n" ++
    "#endif\n" ++
    "#ifndef F_WRLCK\n" ++
    "#define F_WRLCK 2\n" ++
    "#endif\n" ++
    "#ifndef FD_CLOEXEC\n" ++
    "#define FD_CLOEXEC 1\n" ++
    "#endif\n" ++
    "#ifndef _UID_T_DEFINED\n" ++
    "typedef int uid_t;\n" ++
    "#define _UID_T_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _GID_T_DEFINED\n" ++
    "typedef int gid_t;\n" ++
    "#define _GID_T_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _SIGSET_T_DEFINED\n" ++
    "typedef unsigned int sigset_t;\n" ++
    "#define _SIGSET_T_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _SYS_FLOCK_DEFINED\n" ++
    "struct flock { short l_type; short l_whence; long long l_start; long long l_len; int l_pid; };\n" ++
    "#define _SYS_FLOCK_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _PWD_STUB_DEFINED\n" ++
    "struct passwd { char *pw_name; char *pw_passwd; uid_t pw_uid; gid_t pw_gid; char *pw_gecos; char *pw_dir; char *pw_shell; };\n" ++
    "static inline struct passwd *getpwnam(const char *name) { (void)name; errno = ENOSYS; return NULL; }\n" ++
    "static inline struct passwd *getpwuid(uid_t uid) { (void)uid; errno = ENOSYS; return NULL; }\n" ++
    "#define _PWD_STUB_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _GRP_STUB_DEFINED\n" ++
    "struct group { char *gr_name; char *gr_passwd; gid_t gr_gid; char **gr_mem; };\n" ++
    "static inline struct group *getgrnam(const char *name) { (void)name; errno = ENOSYS; return NULL; }\n" ++
    "#define _GRP_STUB_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _IOVEC_DEFINED\n" ++
    "struct iovec { void *iov_base; size_t iov_len; };\n" ++
    "#define _IOVEC_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _MSGHDR_DEFINED\n" ++
    "struct msghdr { void *msg_name; socklen_t msg_namelen; struct iovec *msg_iov; int msg_iovlen; void *msg_control; socklen_t msg_controllen; int msg_flags; };\n" ++
    "#define _MSGHDR_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef _CMSGHDR_DEFINED\n" ++
    "struct cmsghdr { socklen_t cmsg_len; int cmsg_level; int cmsg_type; };\n" ++
    "#define _CMSGHDR_DEFINED 1\n" ++
    "#endif\n" ++
    "#ifndef O_NONBLOCK\n" ++
    "#define O_NONBLOCK 0\n" ++
    "#endif\n" ++
    "#undef errno\n" ++
    "static inline int *socat_errno_ptr(void) { static __thread int e; return &e; }\n" ++
    "#define errno (*socat_errno_ptr())\n" ++
    "#ifndef SIGQUIT\n" ++
    "#define SIGQUIT 3\n" ++
    "#endif\n" ++
    "#ifndef SIGHUP\n" ++
    "#define SIGHUP 1\n" ++
    "#endif\n" ++
    "#ifndef SIGALRM\n" ++
    "#define SIGALRM 14\n" ++
    "#endif\n" ++
    "#ifndef SIGCHLD\n" ++
    "#define SIGCHLD 17\n" ++
    "#endif\n" ++
    "#ifndef SIGTERM\n" ++
    "#define SIGTERM 15\n" ++
    "#endif\n" ++
    "#ifndef SIGPIPE\n" ++
    "#define SIGPIPE 13\n" ++
    "#endif\n" ++
    "#ifndef SIGUSR1\n" ++
    "#define SIGUSR1 10\n" ++
    "#endif\n" ++
    "#ifndef SIGBUS\n" ++
    "#define SIGBUS 7\n" ++
    "#endif\n" ++
    "#ifndef SIG_BLOCK\n" ++
    "#define SIG_BLOCK 0\n" ++
    "#endif\n" ++
    "#ifndef SIG_UNBLOCK\n" ++
    "#define SIG_UNBLOCK 1\n" ++
    "#endif\n" ++
    "#ifndef SA_NOCLDSTOP\n" ++
    "#define SA_NOCLDSTOP 0\n" ++
    "#endif\n" ++
    "#ifndef _O_BINARY\n" ++
    "#define _O_BINARY 0\n" ++
    "#endif\n" ++
    "#ifndef _SIGACTION_DEFINED\n" ++
    "struct sigaction { int sa_flags; void (*sa_handler)(int); sigset_t sa_mask; };\n" ++
    "#define _SIGACTION_DEFINED 1\n" ++
    "#endif\n" ++
    "static inline int sigemptyset(sigset_t *set) { if (set) *set = 0; return 0; }\n" ++
    "static inline int sigfillset(sigset_t *set) { if (set) *set = ~0u; return 0; }\n" ++
    "static inline int sigaddset(sigset_t *set, int sig) { (void)sig; if (set) *set |= 1u; return 0; }\n" ++
    "static inline int sigprocmask(int how, const sigset_t *set, sigset_t *oset) { (void)how; if (oset) *oset = set ? *set : 0; return 0; }\n" ++
    "static inline int sigaction(int signum, const struct sigaction *act, struct sigaction *oldact) { (void)signum; (void)act; (void)oldact; errno = ENOSYS; return -1; }\n" ++
    "static inline int fcntl(int fd, int cmd, ...) { (void)fd; (void)cmd; errno = ENOSYS; return -1; }\n" ++
    "static inline int ioctl(int d, unsigned long request, ...) { (void)d; (void)request; errno = ENOSYS; return -1; }\n" ++
    "static inline int recvmsg(int s, struct msghdr *msgh, int flags) { (void)s; (void)msgh; (void)flags; errno = ENOSYS; return -1; }\n" ++
    "static inline char *ttyname(int fd) { (void)fd; errno = ENOSYS; return NULL; }\n" ++
    "static inline struct tm *localtime_r(const time_t *t, struct tm *tmout) { return (localtime_s(tmout, t) == 0) ? tmout : NULL; }\n" ++
    "static inline int lstat(const char *path, struct stat *buf) { return stat(path, buf); }\n" ++
    "static inline int link(const char *oldpath, const char *newpath) { (void)oldpath; (void)newpath; errno = ENOSYS; return -1; }\n" ++
    "static inline int pipe(int pipefd[2]) { return _pipe(pipefd, 4096, _O_BINARY); }\n" ++
    "static inline int socketpair(int domain, int type, int protocol, int sv[2]) { (void)domain; (void)type; (void)protocol; errno = ENOSYS; return -1; }\n" ++
    "static inline int setuid(uid_t uid) { (void)uid; errno = ENOSYS; return -1; }\n" ++
    "static inline int setgid(gid_t gid) { (void)gid; errno = ENOSYS; return -1; }\n" ++
    "static inline int initgroups(const char *user, gid_t group) { (void)user; (void)group; errno = ENOSYS; return -1; }\n" ++
    "static inline pid_t getpid(void) { return 1; }\n" ++
    "static inline pid_t getppid(void) { return 1; }\n" ++
    "static inline pid_t fork(void) { errno = ENOSYS; return -1; }\n" ++
    "static inline pid_t waitpid(pid_t pid, int *status, int options) { (void)pid; (void)status; (void)options; errno = ENOSYS; return -1; }\n" ++
    "static inline int wait(int *status) { return (int)waitpid(-1, status, 0); }\n" ++
    "static inline unsigned int sleep(unsigned int seconds) { (void)seconds; return 0; }\n" ++
    "static inline unsigned int alarm(unsigned int seconds) { (void)seconds; return 0; }\n" ++
    "static inline int kill(pid_t pid, int sig) { (void)pid; (void)sig; errno = ENOSYS; return -1; }\n" ++
    "static inline int setpgid(pid_t pid, pid_t pgid) { (void)pid; (void)pgid; errno = ENOSYS; return -1; }\n" ++
    "static inline int tcsetpgrp(int fd, pid_t pgrpid) { (void)fd; (void)pgrpid; errno = ENOSYS; return -1; }\n" ++
    "#ifndef EAI_SYSTEM\n" ++
    "#define EAI_SYSTEM -11\n" ++
    "#endif\n" ++
    "#ifndef WNOHANG\n" ++
    "#define WNOHANG 1\n" ++
    "#endif\n" ++
    "#ifndef WEXITSTATUS\n" ++
    "#define WEXITSTATUS(s) 0\n" ++
    "#endif\n" ++
    "#ifndef WIFEXITED\n" ++
    "#define WIFEXITED(s) 1\n" ++
    "#endif\n" ++
    "#ifndef WIFSIGNALED\n" ++
    "#define WIFSIGNALED(s) 0\n" ++
    "#endif\n" ++
    "#ifndef WTERMSIG\n" ++
    "#define WTERMSIG(s) 0\n" ++
    "#endif\n" ++
    "#ifndef WIFSTOPPED\n" ++
    "#define WIFSTOPPED(s) 0\n" ++
    "#endif\n" ++
    "static inline void srandom(unsigned int seed) { srand(seed); }\n" ++
    "static inline long random(void) { return rand(); }\n" ++
    "#ifndef uint\n" ++
    "typedef unsigned int uint;\n" ++
    "#endif\n" ++
    "static inline int fchown(int fd, uid_t owner, gid_t group) { (void)fd; (void)owner; (void)group; errno = ENOSYS; return -1; }\n" ++
    "static inline int fchmod(int fd, mode_t mode) { (void)fd; (void)mode; errno = ENOSYS; return -1; }\n" ++
    "static inline int ftruncate(int fd, off_t length) { (void)fd; (void)length; errno = ENOSYS; return -1; }\n" ++
    "static inline int chown(const char *path, uid_t owner, gid_t group) { (void)path; (void)owner; (void)group; errno = ENOSYS; return -1; }\n" ++
    "static inline int chroot(const char *path) { (void)path; errno = ENOSYS; return -1; }\n" ++
    "static inline pid_t setsid(void) { errno = ENOSYS; return -1; }\n" ++
    "#ifndef _SOCKETOPT_CASTS\n" ++
    "static inline int socat_setsockopt(SOCKET s, int level, int optname, const void *optval, int optlen) { return setsockopt(s, level, optname, (const char *)optval, optlen); }\n" ++
    "static inline int socat_getsockopt(SOCKET s, int level, int optname, void *optval, int *optlen) { return getsockopt(s, level, optname, (char *)optval, optlen); }\n" ++
    "#undef setsockopt\n" ++
    "#undef getsockopt\n" ++
    "#define setsockopt(a,b,c,d,e) socat_setsockopt((SOCKET)(a),(b),(c),(d),(e))\n" ++
    "#define getsockopt(a,b,c,d,e) socat_getsockopt((SOCKET)(a),(b),(c),(d),(e))\n" ++
    "static inline int socat_send(SOCKET s, const void *buf, int len, int flags) { return send(s, (const char *)buf, len, flags); }\n" ++
    "static inline int socat_recv(SOCKET s, void *buf, int len, int flags) { return recv(s, (char *)buf, len, flags); }\n" ++
    "#undef send\n" ++
    "#undef recv\n" ++
    "#define send(a,b,c,d) socat_send((SOCKET)(a),(b),(int)(c),(d))\n" ++
    "#define recv(a,b,c,d) socat_recv((SOCKET)(a),(b),(int)(c),(d))\n" ++
    "#define _SOCKETOPT_CASTS 1\n" ++
    "#endif\n" ++
    "#ifndef NGROUPS\n" ++
    "#define NGROUPS 0\n" ++
    "#endif\n" ++
    "#endif\n\n" ++
    "#endif /* __config_h_included */\n";

pub fn build(b: *std.Build) void {
    // Default to Linux glibc (matches the handcrafted config.h), allow override with -Dtarget.
    const target = b.standardTargetOptions(.{
        .default_target = .{ .cpu_arch = .x86_64, .os_tag = .linux, .abi = .gnu },
    });
    const optimize = b.standardOptimizeOption(.{});

    // Generate a per-target config.h instead of maintaining one static file.
    // This keeps platform-specific availability macros consistent with the
    // selected -Dtarget (glibc, musl, Windows, ...).
    const generated = b.addWriteFiles();
    const config_content = switch (target.result.os.tag) {
        .windows => config_windows,
        .linux => switch (target.result.abi) {
            .musl => config_linux_musl,
            else => config_linux_glibc,
        },
        else => config_linux_glibc,
    };
    _ = generated.add("config.h", config_content);
    const config_dir = generated.getDirectory();

    // Provide minimal compatibility headers for Windows targets to satisfy
    // POSIX includes referenced by the codebase.
    if (target.result.os.tag == .windows) {
        _ = generated.add("arpa/inet.h",
            \\#ifndef _ARPA_INET_H
            \\#define _ARPA_INET_H 1
            \\#include <winsock2.h>
            \\#include <ws2tcpip.h>
            \\typedef unsigned long in_addr_t;
            \\static inline int inet_aton(const char *cp, struct in_addr *inp) {
            \\    return InetPtonA(AF_INET, cp, inp) == 1 ? 1 : 0;
            \\}
            \\#endif /* _ARPA_INET_H */
        );

        _ = generated.add("sys/utsname.h",
            \\#ifndef _SYS_UTSNAME_H
            \\#define _SYS_UTSNAME_H 1
            \\#include <string.h>
            \\struct utsname {
            \\    char sysname[65];
            \\    char nodename[65];
            \\    char release[65];
            \\    char version[65];
            \\    char machine[65];
            \\};
            \\static inline int uname(struct utsname *u) {
            \\    if (!u) return -1;
            \\    (void)strncpy(u->sysname, "Windows", sizeof(u->sysname));
            \\    u->sysname[sizeof(u->sysname) - 1] = 0;
            \\    (void)strncpy(u->nodename, "localhost", sizeof(u->nodename));
            \\    u->nodename[sizeof(u->nodename) - 1] = 0;
            \\    (void)strncpy(u->release, "0", sizeof(u->release));
            \\    u->release[sizeof(u->release) - 1] = 0;
            \\    (void)strncpy(u->version, "0", sizeof(u->version));
            \\    u->version[sizeof(u->version) - 1] = 0;
            \\    (void)strncpy(u->machine, "x86_64", sizeof(u->machine));
            \\    u->machine[sizeof(u->machine) - 1] = 0;
            \\    return 0;
            \\}
            \\#endif /* _SYS_UTSNAME_H */
        );

        _ = generated.add("sys/time.h",
            \\#ifndef _SYS_TIME_H
            \\#define _SYS_TIME_H 1
            \\#include <winsock2.h>
            \\#include <ws2tcpip.h>
            \\#include <windows.h>
            \\#include <time.h>
            \\#ifndef _TIMEZONE_DEFINED
            \\struct timezone { int tz_minuteswest; int tz_dsttime; };
            \\#define _TIMEZONE_DEFINED
            \\#endif
            \\static inline int gettimeofday(struct timeval *tv, struct timezone *tz) {
            \\    (void)tz;
            \\    if (!tv) return -1;
            \\    FILETIME ft;
            \\    ULARGE_INTEGER uli;
            \\    GetSystemTimeAsFileTime(&ft);
            \\    uli.LowPart = ft.dwLowDateTime;
            \\    uli.HighPart = ft.dwHighDateTime;
            \\    const ULONGLONG EPOCH = 116444736000000000ULL; /* 1601 to 1970 in 100ns */
            \\    uli.QuadPart -= EPOCH;
            \\    tv->tv_sec = (long)(uli.QuadPart / 10000000ULL);
            \\    tv->tv_usec = (long)((uli.QuadPart / 10ULL) % 1000000ULL);
            \\    return 0;
            \\}
            \\#endif /* _SYS_TIME_H */
        );

        _ = generated.add("sys/select.h",
            \\#ifndef _SYS_SELECT_H
            \\#define _SYS_SELECT_H 1
            \\#include <winsock2.h>
            \\#include <ws2tcpip.h>
            \\#endif /* _SYS_SELECT_H */
        );

        _ = generated.add("poll.h",
            \\#ifndef _POLL_H
            \\#define _POLL_H 1
            \\#include <winsock2.h>
            \\#include <ws2tcpip.h>
            \\#ifndef NFDS_T_DEFINED
            \\typedef unsigned int nfds_t;
            \\#define NFDS_T_DEFINED
            \\#endif
            \\#ifndef POLLIN
            \\#define POLLIN 0x0001
            \\#define POLLPRI 0x0002
            \\#define POLLOUT 0x0004
            \\#define POLLERR 0x0008
            \\#define POLLHUP 0x0010
            \\#define POLLNVAL 0x0020
            \\#endif
            \\static inline int poll(struct pollfd *fds, nfds_t nfds, int timeout) {
            \\    return WSAPoll(fds, nfds, timeout);
            \\}
            \\#endif /* _POLL_H */
        );

        _ = generated.add("syslog.h",
            \\#ifndef _SYSLOG_H
            \\#define _SYSLOG_H 1
            \\#define LOG_EMERG 0
            \\#define LOG_ALERT 1
            \\#define LOG_CRIT 2
            \\#define LOG_ERR 3
            \\#define LOG_WARNING 4
            \\#define LOG_NOTICE 5
            \\#define LOG_INFO 6
            \\#define LOG_DEBUG 7
            \\#define LOG_KERN   (0<<3)
            \\#define LOG_USER   (1<<3)
            \\#define LOG_MAIL   (2<<3)
            \\#define LOG_DAEMON (3<<3)
            \\#define LOG_AUTH   (4<<3)
            \\#define LOG_SYSLOG (5<<3)
            \\#define LOG_LPR    (6<<3)
            \\#define LOG_NEWS   (7<<3)
            \\#define LOG_UUCP   (8<<3)
            \\#define LOG_CRON   (9<<3)
            \\#define LOG_AUTHPRIV (10<<3)
            \\#define LOG_FTP    (11<<3)
            \\#define LOG_LOCAL0 (16<<3)
            \\#define LOG_LOCAL1 (17<<3)
            \\#define LOG_LOCAL2 (18<<3)
            \\#define LOG_LOCAL3 (19<<3)
            \\#define LOG_LOCAL4 (20<<3)
            \\#define LOG_LOCAL5 (21<<3)
            \\#define LOG_LOCAL6 (22<<3)
            \\#define LOG_LOCAL7 (23<<3)
            \\#define LOG_PID 0x01
            \\#define LOG_CONS 0x02
            \\#define LOG_NDELAY 0x08
            \\#define LOG_NOWAIT 0x10
            \\static inline void openlog(const char *ident, int option, int facility) {
            \\    (void)ident; (void)option; (void)facility;
            \\}
            \\static inline void syslog(int priority, const char *fmt, ...) {
            \\    (void)priority; (void)fmt;
            \\}
            \\static inline void closelog(void) {}
            \\static inline int setlogmask(int mask) { return mask; }
            \\#endif /* _SYSLOG_H */
        );

        _ = generated.add("net/if.h",
            \\#ifndef _NET_IF_H
            \\#define _NET_IF_H 1
            \\#include <winsock2.h>
            \\#include <ws2tcpip.h>
            \\#ifndef IFNAMSIZ
            \\#define IFNAMSIZ 16
            \\#endif
            \\struct ifreq { char ifr_name[IFNAMSIZ]; };
            \\#endif /* _NET_IF_H */
        );
    }

    const exe = b.addExecutable(.{
        .name = "socat",
        .root_module = b.createModule(.{
            .target = target,
            .optimize = optimize,
        }),
    });

    exe.root_module.addIncludePath(config_dir);
    exe.root_module.addIncludePath(.{ .cwd_relative = "socat" });
    exe.root_module.addIncludePath(.{ .cwd_relative = "." });

    // Derive C flags from configure.in expectations.
    var c_flags = std.ArrayListUnmanaged([]const u8){};

    c_flags.appendSlice(b.allocator, &.{
        "-std=gnu11",
        "-D_FILE_OFFSET_BITS=64", // AC_SYS_LARGEFILE equivalent
        "-D_LARGEFILE_SOURCE",
    }) catch @panic("OOM adding base flags");

    switch (target.result.os.tag) {
        .linux => {
            c_flags.append(b.allocator, "-D_GNU_SOURCE") catch @panic("OOM adding linux flags");
            // Match autoconf's linkage expectations.
            exe.linkSystemLibrary("pthread");
            if (target.result.abi == .gnu) {
                exe.linkSystemLibrary("rt");
            }
            exe.linkSystemLibrary("m");
        },
        .windows => {
            // Windows builds are experimental; keep flags minimal.
            c_flags.append(b.allocator, "-DWIN32") catch @panic("OOM adding windows flags");
            c_flags.appendSlice(b.allocator, &.{
                "-Wno-error=parentheses",
                "-Wno-parentheses",
                "-Wno-error=format",
                "-Wno-error=implicit-function-declaration",
            }) catch @panic("OOM adding windows warn flags");
            exe.linkSystemLibrary("ws2_32");
        },
        else => {},
    }

    const sources = [_][]const u8{
        // core sources
        "socat/socat.c",
        // xio layer (trimmed to features enabled above)
        "socat/xioinitialize.c",
        "socat/xiohelp.c",
        "socat/xioparam.c",
        "socat/xiodiag.c",
        "socat/xioopen.c",
        "socat/xioopts.c",
        "socat/xiosignal.c",
        "socat/xiosigchld.c",
        "socat/xioread.c",
        "socat/xiowrite.c",
        "socat/xiolayer.c",
        "socat/xioshutdown.c",
        "socat/xioclose.c",
        "socat/xioexit.c",
        "socat/xio-process.c",
        "socat/xio-fd.c",
        "socat/xio-fdnum.c",
        "socat/xio-stdio.c",
        "socat/xio-pipe.c",
        "socat/xio-socketpair.c",
        "socat/xio-gopen.c",
        "socat/xio-creat.c",
        "socat/xio-file.c",
        "socat/xio-named.c",
        "socat/xio-socket.c",
        "socat/xio-interface.c",
        "socat/xio-listen.c",
        "socat/xio-unix.c",
        "socat/xio-ip.c",
        "socat/xio-ip4.c",
        "socat/xio-ip6.c",
        "socat/xio-ipapp.c",
        "socat/xio-tcp.c",
        "socat/xio-udp.c",
        "socat/xio-progcall.c",
        "socat/xio-exec.c",
        "socat/xio-system.c",
        "socat/xio-shell.c",
        "socat/xio-termios.c",
        "socat/xio-streams.c",
        "socat/xio-ascii.c",
        "socat/xiolockfile.c",
        "socat/xio-stall.c",
        "socat/xio-text.c",
        // utility code
        "socat/error.c",
        "socat/dalan.c",
        "socat/hostan.c",
        "socat/fdname.c",
        "socat/sysutils.c",
        "socat/utils.c",
        "socat/nestlex.c",
        "socat/vsnprintf_r.c",
        "socat/snprinterr.c",
        "socat/sycls.c",
    };

    exe.addCSourceFiles(.{
        .files = &sources,
        .flags = c_flags.items,
    });
    exe.linkLibC();

    b.installArtifact(exe);
}
