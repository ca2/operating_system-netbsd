

message(STATUS "CMAKE_SYSTEM_NAME is ${CMAKE_SYSTEM_NAME}")

#FIND_PACKAGE(PkgConfig)

#include(FindPkgConfig)

set(ENV{PKG_CONFIG_PATH} "$ENV{PKG_CONFIG_PATH}:/usr/pkg/lib/ffmpeg7/pkgconfig/")

message(STATUS "ENV{PKG_CONFIG_PATH} is $ENV{PKG_CONFIG_PATH}")


execute_process(COMMAND uname -m OUTPUT_VARIABLE __SYSTEM_ARCHITECTURE)
string(STRIP ${__SYSTEM_ARCHITECTURE} __SYSTEM_ARCHITECTURE)

execute_process(COMMAND uname -s OUTPUT_VARIABLE __OPERATING_SYSTEM)
string(STRIP ${__OPERATING_SYSTEM} __OPERATING_SYSTEM)
string(TOLOWER ${__OPERATING_SYSTEM} __OPERATING_SYSTEM)


#IF(PKG_CONFIG_FOUND)
    # use pkg_check_modules()
#ENDIF(PKG_CONFIG_FOUND)
set(USE_PKGCONFIG TRUE)
set(NO_PRECOMPILED_HEADER TRUE)
set(PLATFORM_NAME "netbsd")
set(TOOL_RELEASE_NAME "netbsd")
set(MAIN_STORE_SLASHED_OPERATING_SYSTEM "netbsd")
set(HAS_ALSA FALSE)
set(CURL_NANO_HTTP TRUE)
add_compile_definitions(TOOL_FOLDER_OPERATING_SYSTEM_NAME="netbsd")


cmake_policy(SET CMP0060 NEW)


SET(CMAKE_SKIP_BUILD_RPATH FALSE)
SET(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
SET(CMAKE_INSTALL_RPATH "\${ORIGIN}")
SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)


set(OPERATING_SYSTEM_TOOL_FOLDER "tool-netbsd")

#set(GLOBAL_EXTRA_COMPILER_FLAGS -fnon-call-exceptions -nostdinc -nostdinc++ -I/usr/include/c++/v1 -I/usr/include -I/usr/local/include)
#set(GLOBAL_EXTRA_LINKER_FLAGS -nodefaultlibs -lc++ -lcxxrt -lthr -lm -lc -lgcc_s)
#set(GLOBAL_EXTRA_LINKER_FLAGS -L/usr/lib)

if ("${CMAKE_BUILD_TYPE}" STREQUAL "")

    set(CMAKE_BUILD_TYPE Debug)

endif()


if (NOT ${CMAKE_SYSTEM_NAME} STREQUAL "NetBSD")

    message(FATAL_ERROR "File originally designed for NetBSD systems...")

endif ()


if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")

    set(CMAKE_CXX_FLAGS "-fPIC -fexceptions -fnon-call-exceptions -frtti")

    message(STATUS "GNU compiler")

elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")

    message(STATUS "compiler is ${CMAKE_CXX_COMPILER_ID}")

    message(STATUS "compile_features are ${CMAKE_CXX_COMPILE_FEATURES}")

    #set(CMAKE_CXX_COMPILE_FEATURES ${CMAKE_CXX_COMPILE_FEATURES} cxx_std_20)

    #add_compile_options(-pthread -gdwarf-5 -fvar-tracking-assignments -fPIC -fexceptions -fnon-call-exceptions -frtti)

    add_compile_options(-pthread -gdwarf-4 -fPIC -fexceptions -fnon-call-exceptions -frtti)

    link_libraries(pthread)

else()

    message(STATUS "compiler is ${CMAKE_CXX_COMPILER_ID}")

endif ()


#set(DONT_USE_PKG_CONFIG NOT PKG_CONFIG_FOUND)
set(DONT_USE_PKG_CONFIG FALSE)

set(CURRENT_DESKTOP "$ENV{XDG_CURRENT_DESKTOP}")
string(STRIP ${__SYSTEM_ARCHITECTURE} __SYSTEM_ARCHITECTURE)

execute_process(COMMAND xfce4-about -V OUTPUT_VARIABLE XFCE4_ABOUT_OUTPUT)
set(XFCE4_ABOUT_TOKEN "xfce4-about ")
string(LENGTH "${XFCE4_ABOUT_TOKEN}" XFCE4_ABOUT_LENGTH)
string(SUBSTRING "${XFCE4_ABOUT_OUTPUT}" 0 ${XFCE4_ABOUT_LENGTH} XFCE4_ABOUT_CLIPPED)

message(STATUS "xfce4-about clipped is *${XFCE4_ABOUT_CLIPPED}*")
set(OPERATING_SYSTEM_POSIX_PATH "${WORKSPACE_FOLDER}/operating_system/operating_system-posix")

if ("$ENV{XDG_CURRENT_DESKTOP}" STREQUAL "KDE")
    set(KDE_DESKTOP TRUE)
    message(STATUS "System is KDE")
    set(DESKTOP_ENVIRONMENT_NAME "kde")
elseif ("$ENV{XDG_CURRENT_DESKTOP}" STREQUAL "ubuntu:GNOME")
    set(GNOME_DESKTOP TRUE)
    message(STATUS "System is GNOME")
    set(DESKTOP_ENVIRONMENT_NAME "gnome")
elseif ("$ENV{XDG_CURRENT_DESKTOP}" STREQUAL "GNOME")
    set(GNOME_DESKTOP TRUE)
    set(GTK_BASED_DESKTOP TRUE)
    message(STATUS "System is GNOME")
    set(DESKTOP_ENVIRONMENT_NAME "gnome")
    set(GTK_DESKTOP_CMAKE_PATH "${OPERATING_SYSTEM_POSIX_PATH}/_gtk_desktop.cmake")
    message(STATUS "including ${GTK_DESKTOP_CMAKE_PATH}")
    include(${GTK_DESKTOP_CMAKE_PATH})
elseif ("$ENV{XDG_CURRENT_DESKTOP}" STREQUAL "LXDE")
    set(LXDE_DESKTOP TRUE)
    message(STATUS "System is LXDE")
    set(DESKTOP_ENVIRONMENT_NAME "lxde")
elseif ("${XFCE4_ABOUT_CLIPPED}" STREQUAL "${XFCE4_ABOUT_TOKEN}")
    set(XFCE_DESKTOP TRUE)
    set(GTK_BASED_DESKTOP TRUE)
    message(STATUS "System is XFCE")
    set(DESKTOP_ENVIRONMENT_NAME "xfce")
    set(GTK_DESKTOP_CMAKE_PATH "${OPERATING_SYSTEM_POSIX_PATH}/_gtk_desktop.cmake")
    message(STATUS "including ${GTK_DESKTOP_CMAKE_PATH}")
    include(${GTK_DESKTOP_CMAKE_PATH})
endif ()


message(STATUS "DESKTOP_ENVIRONMENT_NAME is ${DESKTOP_ENVIRONMENT_NAME}")

set(UNDERSCORE_OPERATING_SYSTEM $ENV{__SYSTEM_UNDERSCORE_OPERATING_SYSTEM})
set(SLASHED_OPERATING_SYSTEM $ENV{__SYSTEM_SLASHED_OPERATING_SYSTEM})
#set(OPERATING_SYSTEM $ENV{__OPERATING_SYSTEM})
set(OPERATING_SYSTEM_RELEASE $ENV{__OPERATING_SYSTEM_RELEASE})


string(TOLOWER ${CMAKE_BUILD_TYPE} tolower_cmake_build_type)


message(STATUS "tolower_cmake_build_type = ${tolower_cmake_build_type}")
message(STATUS "SLASHED_OPERATING_SYSTEM is ${SLASHED_OPERATING_SYSTEM}")


if (${tolower_cmake_build_type} STREQUAL "debug")

    message(STATUS "Debug Build!!")

    add_compile_definitions(DEBUG)

    message(STATUS "DEBUG compile definition set!!")

elseif (${tolower_cmake_build_type} STREQUAL "relwithdebinfo")

    message(STATUS "RelWithDebInfo Build!!")

    add_compile_definitions(DEBUG)

    message(STATUS "DEBUG compile definition set!!")

elseif (${tolower_cmake_build_type} STREQUAL "release")

    message(STATUS "Release Build!!")

    add_compile_definitions(NDEBUG)

    message(STATUS "NDEBUG compile definition set!!")

elseif (${tolower_cmake_build_type} STREQUAL "minsizerel")

    message(STATUS "MinSizeRel Build!!")

    add_compile_definitions(NDEBUG)

    message(STATUS "NDEBUG compile definition set!!")

else ()

    message(STATUS "\"${CMAKE_BUILD_TYPE}\" Build!!")

    add_compile_definitions(DEBUG)

    message(STATUS "DEBUG compile definition set!!")

endif ()


SET(CMAKE_SKIP_BUILD_RPATH FALSE)
SET(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH $ORIGIN)
#set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set(OPERATING_SYSTEM_NAME "netbsd")
set(OPERATING_SYSTEM_POSIX TRUE)
set(FILE_SYSTEM_INOTIFY FALSE)
set(POSIX_SPAWN TRUE)
set(POSIX_LIST_SERIAL_PORTS TRUE)
set(WITH_X11 FALSE)
set(WITH_XCB FALSE)
set(WITH_XI TRUE)
set(USE_OPENSSL TRUE)
set(PTHREAD TRUE)


message(STATUS "OPERATING_SYSTEM is ${OPERATING_SYSTEM}")

if (${__OPERATING_SYSTEM} STREQUAL "netbsd")

    set(NETBSD TRUE)

    message(STATUS "NETBSD has been set TRUE")

    set(__BSD__ TRUE)

    set(DONT_USE_PKG_CONFIG FALSE)

    add_compile_definitions(NETBSD)

    message(STATUS "added NETBSD compile definition!!")

    add_compile_definitions(__BSD__)

    message(STATUS "added __BSD__ compile definition!!")

    set(APPINDICATOR_PKG_MODULE "appindicator3-0.1")

    set(HAS_NO_APPINDICATOR TRUE)

    set(LAUNCH_STORE_SYSTEM "netbsd")

elseif (${OPERATING_SYSTEM} STREQUAL "netbsd")

    set(NETBSD TRUE)

    add_compile_definitions(NETBSD)

    message(STATUS "NETBSD has been set TRUE")

    add_compile_definitions(__BSD__)

    message(STATUS "added __BSD__ compile definition!!")

    set(APPINDICATOR_PKG_MODULE "ayatana-appindicator3-0.1")

else ()

    set(APPINDICATOR_PKG_MODULE "appindicator3-0.1")

endif ()


message(STATUS "DISTRO_RELEASE is ${DISTRO_RELEASE}")


set(MIDI FALSE)
set(ALSA_MIDI FALSE)
set(INTERPROCESS_COMMUNICATION_SYSTEM_5 TRUE)

add_compile_definitions(WITH_X11)
add_compile_definitions(WITH_SN)
add_compile_definitions(WITH_XI)
include(FindPkgConfig)

if (EXISTS $ENV{HOME}/__config/xfce.txt)

    set(LINUX_XFCE TRUE)
    message(STATUS "Adding Xfce/X11 dependency.")

endif ()

if (${KDE_DESKTOP})

    set(WITH_XCB TRUE)
    add_compile_definitions(WITH_XCB=1)

    set(QT_MIN_VERSION "5.3.0")
    set(KF5_MIN_VERSION "5.2.0")

    # apt install extra-cmake-modules
    # dnf install extra-cmake-modules
    find_package(ECM 1.0.0 REQUIRED NO_MODULE)
    set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH} ${ECM_KDE_MODULE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

    # apt install libkf5notifications-dev
    # dnf install kf5-knotifications-devel

    #include(KDEInstallDirs)
    #include(KDECMakeSettings)
    #include(KDECompilerSettings NO_POLICY_SCOPE)
    #    find_package(KF5 ${KF5_MIN_VERSION} REQUIRED COMPONENTS
    # CoreAddons      # KAboutData
    #          I18n            # KLocalizedString
    #         WidgetsAddons   # KMessageBox
    #      Notifications
    #     )
    #include(FeatureSummary)

    # Find Qt modules
    #find_package(Qt5 ${QT_MIN_VERSION} CONFIG REQUIRED COMPONENTS
    #  Core    # QCommandLineParser, QStringLiteral
    #  Widgets # QApplication
    #  )
    find_package(KF5 ${KF5_MIN_VERSION} REQUIRED COMPONENTS
            # CoreAddons      # KAboutData
            #          I18n            # KLocalizedString
            #         WidgetsAddons   # KMessageBox
            CoreAddons
            Notifications
            ConfigWidgets
            KIO
            IconThemes
            )

    find_package(LibKWorkspace CONFIG REQUIRED)

    find_package(Qt5 ${QT_MIN_VERSION} REQUIRED COMPONENTS
            Core
            DBus
            UiTools
            X11Extras
            )

    # Find KDE modules

    #feature_summary(WHAT ALL INCLUDE_QUIET_PACKAGES FATAL_ON_MISSING_REQUIRED_PACKAGES)
    #        find_package(KDE5 REQUIRED)
    message(STATUS "Adding KDE/xcb dependency.")
    #        file (STRINGS $ENV{HOME}/__config/knotifications/cflags.txt knotifications_cflags)
    #        file (STRINGS $ENV{HOME}/__config/knotifications/libs.txt knotifications_libs)
    #        if(knotifications_cflags STREQUAL "")
    #            set(knotifications_cflags -I/usr/include/KF5/KNotifications)
    #        endif()
    #        if(knotifications_libs STREQUAL "")
    #            set(knotifications_cflags -I/usr/include/KF5/KNotifications)
    #        endif()
endif ()

if(${HAS_GTK3})

    set(WITH_XCB TRUE)
    add_compile_definitions(WITH_XCB=1)

endif()

set(default_draw2d "draw2d_cairo")
set(default_imaging "imaging_freeimage")
set(default_write_text "write_text_pango")
set(default_audio "audio_sunaudio")
set(default_music_midi "music_midi_alsa")
set(default_node "node_netbsd")
set(default_audio_mixer "audio_mixer_alsa")
set(default_gpu "gpu_opengl")
set(default_networking "networking_bsd")
set(default_acme "acme_netbsd")
set(default_apex "apex_netbsd")
set(default_nano_graphics "nano_graphics_cairo")
set(default_acme_windowing "acme_windowing_gtk3")
#add_compile_definitions(default_draw2d=draw2d_cairo)
#add_compile_definitions(default_imaging=imaging_freeimage)
#add_compile_definitions(default_write_text=write_text_pango)
#add_compile_definitions(default_audio=audio_alsa)
#add_compile_definitions(default_music_midi=music_midi_alsa)
#add_compile_definitions(default_node=node_linux)




list(APPEND acme_libraries
   acme
   acme_posix
   acme_netbsd)


list(APPEND static_acme_libraries
   static_acme
   static_acme_posix
   static_acme_netbsd)


list(APPEND apex_libraries
   ${acme_libraries}
   apex
   apex_posix
   apex_netbsd
)

list(APPEND aura_libraries
   ${apex_libraries}
   aura
   aura_posix
   aura_netbsd
   node_netbsd
)

set(default_nano_graphics nano_graphics_cairo)



#~ if (${LXDE_DESKTOP})

    #~ list(APPEND app_common_dependencies
            #~ desktop_environment_gnome)

#~ #    list(APPEND static_app_common_dependencies
#~ #            static_desktop_environment_gnome
#~ #            static_node_gnome
#~ #            static_node_gtk
#~ #            static_windowing_x11)

    #~ set(default_windowing "windowing_x11")

    #~ add_compile_definitions(DESKTOP_ENVIRONMENT_GNOME)

    #~ add_compile_definitions(default_windowing=windowing_x11)

#~ elseif (${XFCE_DESKTOP})

	#~ message(STATUS "Setting up definitions for XFCE_DESKTOP")

   #~ list(APPEND app_common_dependencies
      #~ operating_ambient_gtk3
      #~ node_gtk3
      #~ )

   #~ list(APPEND static_app_common_dependencies
      #~ static_operating_ambient_gtk3
      #~ )

   #~ set(default_windowing "windowing_gtk3")
   #~ set(acme_windowing "acme_windowing_gtk3")
   #~ set(default_innate_ui "innate_ui_gtk3")
	

    #~ add_compile_definitions(DESKTOP_ENVIRONMENT_GTK3)

    #~ add_compile_definitions(default_windowing=windowing_gtk3)


#~ elseif (${GTK_BASED_DESKTOP})
if (${GTK_BASED_DESKTOP})

   include("operating_system/operating_system-posix/_default_gtk_windowing.cmake")

   #~ message(STATUS "Adding GTK/X11 dependency.")
   
   #~ list(APPEND acme_windowing_libraries
      #~ common_gtk
      #~ )


   if(${HAS_GTK3})
   
      #list(APPEND acme_windowing_libraries
         #acme_windowing_gtk3
         #nano_graphics_cairo
         #)

      #list(APPEND apex_windowing_libraries
         #${acme_windowing_libraries}
         #innate_ui_gtk3
      #)

      #list(APPEND aura_libraries
         #${apex_windowing_libraries}
         #innate_ui_gtk3
      #)

      #list(APPEND app_common_dependencies
         #operating_ambient_gtk3
         #node_gtk3
      #)

      #list(APPEND static_app_common_dependencies
            #operating_ambient_gtk3)


      #set(default_windowing "windowing_gtk3")
      #set(acme_windowing "acme_windowing_gtk3")
      #set(default_innate_ui "innate_ui_gtk3")
	

      #~ add_compile_definitions(DESKTOP_ENVIRONMENT_GTK3)

      #~ add_compile_definitions(default_windowing=windowing_gtk3)
      
   elseif(${HAS_GTK4})
   
   
   endif()


elseif(${KDE_DESKTOP})

    list(APPEND app_common_dependencies
            desktop_environment_kde)

#    list(APPEND static_app_common_dependencies
#            static_desktop_environment_kde
#            static_node_kde
#            static_windowing_xcb
#            KF5::Notifications
#            KF5::ConfigWidgets
#            KF5::IconThemes
#            KF5::KIOCore
#            KF5::KIOFileWidgets
#            KF5::KIOWidgets
#            KF5::KIONTLM
#            PW::KWorkspace
#            )

    set(default_windowing "windowing_xcb")

    add_compile_definitions(DESKTOP_ENVIRONMENT_KDE)

    add_compile_definitions(default_windowing=windowing_xcb)

endif ()


include("operating_system/operating_system-posix/_default_posix_windowing.cmake")


set(LIBCXX_TARGETING_MSVC OFF)


add_compile_definitions(UNICODE)
add_compile_definitions(_UNICODE)


set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/library)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/output)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/library)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)


link_directories(/usr/lib)
link_directories(/usr/pkg/lib)
link_directories(/usr/X11R6/lib)
link_directories(${LIBRARY_OUTPUT_PATH})
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/operating_system/storage-${OPERATING_SYSTEM_NAME}/library/x64/basis)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/operating_system/storage-${OPERATING_SYSTEM_NAME}/third/library/x64/basis)


include_directories(/usr/include)
include_directories(/usr/pkg/include)
include_directories(${WORKSPACE_FOLDER})
include_directories($ENV{HOME}/__config)
include_directories(${WORKSPACE_FOLDER}/source)
include_directories(${WORKSPACE_FOLDER}/source/app)
include_directories(${WORKSPACE_FOLDER}/source/app/include)
include_directories(${WORKSPACE_FOLDER}/source/include)
include_directories(${WORKSPACE_FOLDER}/port/_)
include_directories(${WORKSPACE_FOLDER}/port/include)
include_directories(${WORKSPACE_FOLDER}/operating_system)
if (OPERATING_SYSTEM_POSIX)
    include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-posix)
    include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-posix/include)
endif ()
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME})
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/include)
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/configuration)
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/include/configuration_selection/${CMAKE_BUILD_TYPE})
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/operating_system/${SLASHED_OPERATING_SYSTEM})
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/operating_system/${DISTRO})


set(INCLUDE_DRAW2D_CAIRO TRUE)
set(INCLUDE_IMAGING_FREEIMAGE TRUE)


set(STORE_FOLDER $ENV{HOME}/store/${SLASHED_OPERATING_SYSTEM})




