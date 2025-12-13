/* Minimal handcrafted config for cross-building socat with zig. */
#ifndef __config_h_included
#define __config_h_included 1

/* Enable common GNU/Linux headers and functions. */
#define STDC_HEADERS 1
#define TIME_WITH_SYS_TIME 1
#define HAVE_SYS_WAIT_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_SOCKET_H 1
#define HAVE_SYS_UIO_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_SYS_UN_H 1
#define HAVE_SYS_IOCTL_H 1
#define HAVE_SYS_TIME_H 1
#define HAVE_SYSLOG_H 1
#if defined(_WIN32)
#undef HAVE_SYSLOG_H
#define HAVE_SYSLOG_H 0
#undef HAVE_PWD_H
#define HAVE_PWD_H 0
#undef HAVE_GRP_H
#define HAVE_GRP_H 0
#undef HAVE_UNISTD_H
#define HAVE_UNISTD_H 0
#undef HAVE_SYS_UTSNAME_H
#define HAVE_SYS_UTSNAME_H 0
#undef HAVE_SYS_WAIT_H
#define HAVE_SYS_WAIT_H 0
#undef HAVE_SYS_SELECT_H
#define HAVE_SYS_SELECT_H 0
#undef HAVE_TERMIOS_H
#define HAVE_TERMIOS_H 0
#undef HAVE_NETDB_H
#define HAVE_NETDB_H 0
#endif
#define HAVE_SYS_SELECT_H 1
#define HAVE_SYS_FILE_H 1
#define HAVE_SYS_UTSNAME_H 1
#define HAVE_NETDB_H 1
#define HAVE_NETINET_IN_H 1
#define HAVE_NETINET_IN_SYSTM_H 1
#define HAVE_NETINET_IP_H 1
#define HAVE_NETINET_TCP_H 1
#define HAVE_ARPA_NAMESER_H 1
#define HAVE_FCNTL_H 1
#define HAVE_LIMITS_H 1
#define HAVE_STRINGS_H 1
#define HAVE_UNISTD_H 1
#define HAVE_POLL_H 1
#define HAVE_SYS_POLL_H 1
#define HAVE_STDBOOL_H 0
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_REGEX_H 1
#define HAVE_TERMIOS_H 1
#define HAVE_RESOLV_H 1
#define HAVE_NET_IF_H 1
#define HAVE_LINUX_IF_PACKET_H 1
#define HAVE_NETINET_IF_ETHER_H 1
#define HAVE_PWD_H 1
#define HAVE_GRP_H 1

/* Functions / prototypes present in glibc. */
#define HAVE_STRFTIME 1
#define HAVE_SELECT 1
#define HAVE_PSELECT 1
#define HAVE_POLL 1
#define HAVE_SOCKET 1
#define HAVE_INET_ATON 1
#define HAVE_GETHOSTBYNAME 1
#define HAVE_GETADDRINFO 1
#define HAVE_GETPROTOBYNUMBER 1
/* musl does not provide getprotobynumber_r */
#define HAVE_GETPROTOBYNUMBER_R 0
#define HAVE_HSTRERROR 1
#define HAVE_PROTOTYPE_HSTRERROR 1
#define HAVE_CLOCK_GETTIME 1
#define HAVE_NANOSLEEP 1
#define HAVE_UNAME 1
#define HAVE_GETPGID 1
#define HAVE_GETSID 1
#define HAVE_PUTENV 1
#define HAVE_SETGROUPS 1
#define HAVE_GETRESUID 1
#define HAVE_GETRESGID 1
#define HAVE_STRTOLL 1
#define HAVE_STRTOD 1
#define HAVE_STRTOL 1
#define HAVE_STRTOUL 1
#define HAVE_INET_NTOP 1
#define HAVE_IF_NAMETOINDEX 1
#define HAVE_PTSNAME 1
#define HAVE_OPENPTY 1
#define HAVE_GETPWNAM 1
#define HAVE_GETPWUID 1
#define HAVE_GETGRNAM 1
#define HAVE_INITGROUPS 1
#define HAVE_SIGACTION 1

/* Prototypes the code may probe. */
#define HAVE_PROTOTYPE_LIB_posix_memalign 1
#define HAVE_PROTOTYPE_LIB_strdup 1
#define HAVE_PROTOTYPE_LIB_strerror 1
#define HAVE_PROTOTYPE_LIB_strstr 1
#define HAVE_PROTOTYPE_LIB_strndup 1
#define HAVE_PROTOTYPE_LIB_memrchr 1
#define HAVE_PROTOTYPE_LIB_if_indextoname 1
#define HAVE_PROTOTYPE_LIB_gettimeofday 1

#define HAVE_DECL_ENVIRON 1
#define HAVE_VAR_ENVIRON 1

/* Feature toggles: keep core features, drop optional libs. */
#define WITH_HELP 1
#define WITH_STATS 1
#define WITH_STDIO 1
#define WITH_FDNUM 1
#define WITH_FILE 1
#define WITH_GOPEN 1
#define WITH_CREAT 1
#define WITH_PIPE 1
#define WITH_UNIX 1
#define WITH_INTERFACE 1
#define WITH_IP4 1
#define WITH_IP6 1
#define WITH_TCP 1
#define WITH_UDP 1
#define WITH_RAWIP 0
#define WITH_SCTP 0
#define WITH_DCCP 0
#define WITH_UDPLITE 0
#define WITH_SOCKS4 0
#define WITH_SOCKS4A 0
#define WITH_SOCKS5 0
#define WITH_PROXY 0
#define WITH_GENERICSOCKET 0
#define WITH_SOCKETPAIR 1
#define WITH_LISTEN 1
#define WITH_VSOCK 0
#define WITH_PTY 0
#define WITH_READLINE 0
#define WITH_OPENSSL 0
#define WITH_TCPWRAP 0
#define WITH_POSIXMQ 0
#define WITH_NAMESPACES 0
#define WITH_FS 0
#define WITH_TUN 0

/* Defaults and misc. */
#define WITH_DEFAULT_IPV 4
#define BUILD_DATE "custom"

/* Struct availability. */
#define HAVE_STRUCT_TIMESPEC 1
#define HAVE_STRUCT_LINGER 1
#define HAVE_STRUCT_GROUP_SOURCE_REQ 1
#define HAVE_STRUCT_IP_MREQ 1
#define HAVE_STRUCT_IP_MREQN 1
#define HAVE_STRUCT_IP_MREQ_SOURCE 1

/* Types already provided by libc headers. */
#define HAVE_TYPE_SOCKLEN 1
#define HAVE_TYPE_UINT8 1
#define HAVE_TYPE_UINT16 1
#define HAVE_TYPE_UINT32 1
#define HAVE_TYPE_SA_FAMILY_T 1

/* GNU extensions. */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif

#endif /* __config_h_included */
