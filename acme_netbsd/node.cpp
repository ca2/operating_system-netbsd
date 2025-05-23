#include "framework.h"
#include "node.h"
#include "acme/operating_system/summary.h"
#include "acme/filesystem/filesystem/directory_system.h"
#include "acme/filesystem/filesystem/file_context.h"
#include "acme/filesystem/filesystem/file_system.h"
#include "acme/filesystem/filesystem/path_system.h"
#include "acme/windowing/windowing.h"
//#include "acme/operating_system/ansi/process.h"
//#include <xfce4/libxfce4util/libxfce4util.h>
typedef const char * XFCE_VERSION_STRING();
typedef XFCE_VERSION_STRING * PFUNCTION_XFCE_VERSION_STRING;
#include <dlfcn.h>
#include <sched.h>
//::user::enum_desktop _get_edesktop();
void process_get_os_priority(int * piPolicy, sched_param * pparam, ::enum_priority epriority);

long long * netbsd_list_processes(int & c);
namespace acme_netbsd
{


   node::node()
   {


   }


   node::~node()
   {


   }


   void node::initialize(::particle * pparticle)
   {

      //auto estatus =

      ::acme_posix::node::initialize(pparticle);

//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      return estatus;

   }

//   string node::get_user_name()
//   {
//
//      WCHAR wsz[1024];
//
//      DWORD dwSize = sizeof(wsz) / sizeof(WCHAR);
//
//      ::GetUserNameW(wsz, &dwSize);
//
//      return string(wsz);
//
//   }
//#include "aura/os/netbsd/_c.h"
//
//
//   bool node::_os_calc_app_dark_mode()
//   {
//
//      try
//      {
//
//         ::netbsd::registry::key key;
//
//         key.open(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize");
//
//         unsigned int dw;
//
//         auto estatus = key._get("AppsUseLightTheme", dw);
//
//         if (::failed(estatus))
//         {
//
//            estatus = key._get("SystemUseLightTheme", dw);
//
//            if (::failed(estatus))
//            {
//
//               return false;
//
//            }
//
//         }
//
//         return dw == 0;
//
//      }
//      catch (...)
//      {
//
//         return false;
//
//      }
//
//   }
//
//
//   bool node::_os_calc_system_dark_mode()
//   {
//
//      try
//      {
//
//         ::netbsd::registry::key key;
//
//         key.open(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize");
//
//         unsigned int dw;
//
//         auto estatus = key._get("SystemUseLightTheme", dw);
//
//         if (::failed(estatus))
//         {
//
//            estatus = key._get("AppsUseLightTheme", dw);
//
//            if (::failed(estatus))
//            {
//
//               return false;
//
//            }
//
//         }
//
//         return dw == 0;
//
//      }
//      catch (...)
//      {
//
//         return false;
//
//      }
//
//   }
//
//
//   ::color::color node::get_default_color(huge_natural u)
//   {
//
//      switch (u)
//      {
//      case COLOR_3DFACE:
//         return argb(127, 192, 192, 184);
//      case COLOR_WINDOW:
//         return argb(127, 255, 255, 255);
//      case COLOR_3DLIGHT:
//         return argb(127, 218, 218, 210);
//      case COLOR_3DHIGHLIGHT:
//         return argb(127, 238, 238, 230);
//      case COLOR_3DSHADOW:
//         return argb(127, 138, 138, 130);
//      case COLOR_3DDKSHADOW:
//         return argb(127, 90, 90, 80);
//      default:
//         break;
//      }
//
//      return argb(127, 0, 0, 0);
//
//   }
//
//   
//   void node::set_console_colors(unsigned int dwScreenColors, unsigned int dwPopupColors, unsigned int dwWindowAlpha)
//   {
//
//      ::netbsd::registry::key key(HKEY_CURRENT_USER, "Console", true);
//
//      key._set("ScreenColors", dwScreenColors);
//      key._set("PopupColors", dwPopupColors);
//      key._set("WindowAlpha", dwWindowAlpha);
//
//   }
//
//
//
//   ::e_status node::set_system_dark_mode1(bool bSet)
//   {
//
//      ::netbsd::registry::key key(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize", true);
//
//      unsigned int dwSystemUseLightTheme;
//      if (bSet)
//      {
//         dwSystemUseLightTheme = 0;
//      }
//      else
//      {
//         dwSystemUseLightTheme = 1;
//      }
//
//      key._set("SystemUsesLightTheme", dwSystemUseLightTheme);
//      return ::success;
//
//   }
//
//
//   ::e_status node::set_app_dark_mode1(bool bSet)
//   {
//
//      ::netbsd::registry::key key(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize", true);
//
//      unsigned int dwAppsUseLightTheme;
//      if (bSet)
//      {
//         dwAppsUseLightTheme = 0;
//      }
//      else
//      {
//         dwAppsUseLightTheme = 1;
//      }
//
//      key._set("AppsUseLightTheme", dwAppsUseLightTheme);
//
//      return ::success;
//
//   }
//
//   
//   double node::get_time_zone()
//   {
//
//      double dTimeZone = 0.;
//
//#ifdef NETBSD
//      {
//         //time_t t = time(nullptr);
//
//         //struct tm *p = localtime(&t);
//
//         DYNAMIC_TIME_ZONE_INFORMATION i = {};
//
//         unsigned int dw = GetDynamicTimeZoneInformation(&i);
//
//         if (dw == TIME_ZONE_ID_STANDARD)
//         {
//
//            dTimeZone = -((double)(i.Bias + i.StandardBias) / 60.0);
//
//         }
//         else if (dw == TIME_ZONE_ID_DAYLIGHT)
//         {
//
//            dTimeZone = -((double)(i.Bias + i.DaylightBias) / 60.0);
//
//         }
//         else
//         {
//
//            dTimeZone = -((double)i.Bias / 60.0);
//
//         }
//
//      }
//#else
//      {
//
//         time_t t = time(nullptr);
//
//         struct tm lt = { 0 };
//
//         localtime_r(&t, &lt);
//
//         //printf("Offset to GMT is %lds.\n", lt.tm_gmtoff);
//
//         //printf("The time zone is '%s'.\n", lt.tm_zone);
//
//         dTimeZone = +((double)lt.tm_gmtoff / (60.0 * 60.0));
//
//      }
//#endif
//
//      return dTimeZone;
//
//   }
//
//
//   ::e_status node::open_folder(::file::path & pathFolder)
//   {
//
//      wstring wstrFolder(pathFolder);
//
//      int i = (int) (iptr) ::ShellExecuteW(nullptr, L"open", wstrFolder, nullptr, nullptr, SW_NORMAL);
//
//      if (i < 32)
//      {
//
//         switch (i)
//         {
//         case 0:
//            //The operating system is out of memory or resources.
//            return error_no_memory;
//         case ERROR_FILE_NOT_FOUND:
//            return error_file_not_found;
//            //The specified file was not found.
//         case ERROR_PATH_NOT_FOUND:
//            return error_path_not_found;
//            //            The specified path was not found.
//         case          ERROR_BAD_FORMAT:
//            return error_bad_format;
//            //The.exe file is invalid(non - Win32.exe or error in.exe image).
//            //case SE_ERR_ACCESSDENIED:
//            //         return error_access_denied;
//            ////The operating system denied access to the specified file.
//            //SE_ERR_ASSOCINCOMPLETE
//            //The file name association is incomplete or invalid.
//            //SE_ERR_DDEBUSY
//            //The DDE transaction could not be completed because other DDE transactions were being processed.
//            //SE_ERR_DDEFAIL
//            //The DDE transaction failed.
//            //SE_ERR_DDETIMEOUT
//            //The DDE transaction could not be completed because the request timed out.
//            //SE_ERR_DLLNOTFOUND
//            //The specified DLL was not found.
//            //SE_ERR_FNF
//            //The specified file was not found.
//            //SE_ERR_NOASSOC
//            //There is no application associated with the given file name extension.This error will also be returned if you attempt to print a file that is not printable.
//            //SE_ERR_OOM
//            //There was not enough memory to complete the operation.
//            //SE_ERR_PNF
//            //The specified path was not found.
//            //SE_ERR_SHARE
//            //A sharing violation occurred.*/
//         default:
//            return error_failed;
//         }
//
//      }
//
//      return ::success;
//
//   }
//
//
//   ::e_status node::register_dll(const ::file::path & pathDll)
//   {
//
//
//      string strPathDll;
//         
//      //#ifdef _DEBUG
//         
//      strPathDll = pathDll;
//         
//      //#else
//      //
//      //   strPathDll = m_psystem->m_pnodedir->matter() / "time" / process_platform_dir_name() /"stage/_desk_tb.dll";
//      //
//      //#endif
//         
//      string strParam;
//         
//      strParam = "/s \"" + strPathDll + "\"";
//         
//      //wstring wstrParam(strParam);
//         
//      //STARTUPINFOW si = {};
//         
//      //si.cb = sizeof(si);
//         
//      //si.wShowWindow = SW_HIDE;
//         
//      //PROCESS_INFORMATION pi = {};
//         
//      WCHAR wszSystem[2048];
//         
//      GetSystemDirectoryW(wszSystem, sizeof(wszSystem) / sizeof(WCHAR));
//         
//      wstring wstrSystem(wszSystem);
//         
//      ::file::path path(wstrSystem);
//         
//      path /= "regsvr32.exe";
//         
//      property_set set;
//         
//      set["privileged"] = true;
//         
//      if (!call_sync(path, strParam, path.folder(), ::e_display_none, 3_min, set))
//      {
//         
//         return false;
//         
//      }
//         
//      //if (CreateProcessW(wstrPath, wstrParam, nullptr, nullptr, false, 0, nullptr, wstrSystem, &si, &pi))
//      //{
//         
//      //   output_debug_string("created");
//         
//      //}
//      //else
//      //{
//         
//      //   output_debug_string("not created");
//         
//      //}
//         
//      //CloseHandle(pi.hProcess);
//         
//      //CloseHandle(pi.htask);
//         
//      return true;
//         
//   }
//
//
//   ::e_status node::start()
//   {
//
//      auto estatus = m_psystem->m_papexsystem->m_papex->thread_initialize(m_psystem->m_papexsystem);
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      estatus = m_psystem->on_start();
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      estatus = m_psystem->main();
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      estatus = m_psystem->inline_term();
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      return estatus;
//
//
//   }
//
//
//   ::e_status node::get_firefox_installation_info(string& strPathToExe, string& strInstallDirectory)
//   {
//
//#ifdef NETBSD_DESKTOP
//
//      try
//      {
//
//         ::netbsd::registry::key key(HKEY_LOCAL_MACHINE, "SOFTWARE\\Mozilla\\Mozilla Firefox");
//
//         string strCurrentVersion;
//
//         key.get("CurrentVersion", strCurrentVersion);
//
//         key.open(HKEY_LOCAL_MACHINE, "SOFTWARE\\Mozilla\\Mozilla Firefox\\" + strCurrentVersion + "\\Main");
//
//         key.get("PathToExe", strPathToExe);
//
//         key.get("Install Directory", strInstallDirectory);
//
//      }
//      catch (const ::e_status& estatus)
//      {
//
//         return estatus;
//
//      }
//
//      return ::success;
//
//#else
//
//      return ::error_failed;
//
//#endif
//
//   }
//
//
//   ::e_status node::_001InitializeShellOpen()
//   {
//
//      //ASSERT(m_atomApp == nullptr && m_atomSystemTopic == nullptr); // do once
//
//      //m_atomApp            = ::GlobalAddAtomW(::str::international::utf8_to_unicode(m_strAppName));
//
//      //m_atomSystemTopic    = ::GlobalAddAtomW(L"system");
//
//      return ::success;
//
//   }
//
//
//   ::e_status node::process_init()
//   {
//
//      
//
//      defer_initialize_winsock();
//      return success;
//
//   }
//
//
//   string node::veriwell_multimedia_music_midi_get_default_library_name()
//   {
//
//      return "music_midi_mmsystem";
//
//   }
//
//
//   string node::multimedia_audio_mixer_get_default_library_name()
//   {
//
//      return "audio_mixer_mmsystem";
//
//   }
//
//
//   string node::multimedia_audio_get_default_library_name()
//   {
//
//      string str;
//
//      if (file_exists(m_psystem->m_pnodedir->system() / "config\\system\\audio.txt"))
//      {
//
//         str = file_as_string(m_psystem->m_pnodedir->system() / "config\\system\\audio.txt");
//
//      }
//      else
//      {
//
//         ::file::path strPath;
//
//         strPath = m_psystem->m_pnodedir->appdata() / "audio.txt";
//
//         str = file_as_string(strPath);
//
//      }
//
//      if (str.has_character())
//         return "audio_" + str;
//      else
//         return "audio_mmsystem";
//
//   }
//
//
   // Twitter Automator and Denis Lakic and UpWork contribution
// enzymes: Liveedu.tv, Twitch.tv and Mixer.com streamers and viewers
// Mummi and bilbo!!
// create call to :
   void node::install_crash_dump_reporting(const string & strModuleNameWithTheExeExtension)
   {

//      ::netbsd::registry::key k;
//
//      string strKey = "SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting\\LocalDumps\\" + strModuleNameWithTheExeExtension;
//
//      if (k._open(HKEY_LOCAL_MACHINE, strKey, true))
//      {
//         ::file::path str = m_psystem->m_pnodedir->system() / "CrashDumps" / strModuleNameWithTheExeExtension;
//         wstring wstr = str;
//         RegSetValueExW(k.m_hkey, L"DumpFolder", 0, REG_EXPAND_SZ, (byte*)wstr.c_str(), unsigned int((wcslen(wstr) + 1) * sizeof(wchar_t)));
//         unsigned int dw = 10;
//         RegSetValueExW(k.m_hkey, L"DumpCount", 0, REG_DWORD, (byte*)&dw, sizeof(dw));
//         dw = 2;
//         RegSetValueExW(k.m_hkey, L"DumpType", 0, REG_DWORD, (byte*)&dw, sizeof(dw));
//
//      }
//
//      output_debug_string("test01");

   }
//
//
//   int g_iMemoryCountersStartable = 0;
//
//   bool node::memcnts()
//   {
//
//      if (g_iMemoryCountersStartable && g_iMemoryCounters < 0)
//      {
//
//         g_iMemoryCounters = file_exists(m_psystem->m_pnodedir->config() / "system/memory_counters.txt") ? 1 : 0;
//
//         if (g_iMemoryCounters)
//         {
//
//            g_pmutexMemoryCounters = new ::mutex(e_create_new, false, "Global\\ca2_memory_counters");
//
//         }
//
//      }
//
//      return g_iMemoryCountersStartable && g_iMemoryCounters;
//
//   }
//
//
//   ::file::path* g_pMemoryCounters = nullptr;
//
//
//   CLASS_DCL_ACME::file::path node::memcnts_base_path()
//   {
//
//      if (g_iMemoryCountersStartable && g_pMemoryCounters == nullptr)
//      {
//
//         g_pMemoryCounters = new ::file::path();
//
//#if defined(_UWP)
//
//         string strBasePath = m_psystem->m_pnodedir->system() / "memory_counters";
//
//#else
//
//         ::file::path strModule = module_path_from_pid(getpid());
//
//         string strBasePath = m_psystem->m_pnodedir->system() / "memory_counters" / strModule.title() / __str(getpid());
//
//#endif
//
//         * g_pMemoryCounters = strBasePath;
//
//      }
//
//      return *g_pMemoryCounters;
//
//   }
//
//


//   ::e_status node::datetime_to_filetime(::filetime_t * pfiletime, const ::datetime::time& time)
//   {
//
//      SYSTEMTIME sysTime;
//
//      sysTime.wYear = (unsigned short)time.GetYear();
//      sysTime.wMonth = (unsigned short)time.GetMonth();
//      sysTime.wDay = (unsigned short)time.GetDay();
//      sysTime.wHour = (unsigned short)time.GetHour();
//      sysTime.wMinute = (unsigned short)time.GetMinute();
//      sysTime.wSecond = (unsigned short)time.GetSecond();
//      sysTime.wMilliseconds = 0;
//
//      // convert system time to local file time
//      FILETIME localTime;
//
//      DWORD dwLastError = ::GetLastError();
//
//      if (!SystemTimeToFileTime((LPSYSTEMTIME)&sysTime, &localTime))
//      {
//
//         DWORD dwLastError = ::GetLastError();
//
//         return last_error_to_status(dwLastError);
//
//      }
//
//      // convert local file time to UTC file time
//      if (!LocalFileTimeToFileTime(&localTime, (FILETIME*)pfiletime))
//      {
//
//         DWORD dwLastError = ::GetLastError();
//
//         return last_error_to_status(dwLastError);
//
//      }
//
//      return ::success;
//
//   }


//   ::e_status node::last_error_to_status(DWORD dwLastError)
//   {
//
//      if (dwLastError == 0)
//      {
//
//         return ::success;
//
//      }
//      else
//      {
//
//         return error_failed;
//
//      }
//
//
//   }


   string node::audio_get_default_implementation_name()
   {

      return "sunaudio";

   }


   void node::shell_open(const ::file::path & path, const ::string & strParams, const ::file::path & pathFolder)
   {
      
      printf_line("acme_netbsd::node::shell_open for path : \"%s\"", path.c_str());
      
      if(strParams.is_empty() && pathFolder.is_empty())
      {
         printf_line("acme_netbsd::node::shell_open trying shell open from windowing for path : \"%s\"", path.c_str());
         
         if(system()->acme_windowing()->shell_open(path))
         {
            
            return;
            
         }
         
      }
      
      printf_line("acme_netbsd::node::shell_open doing alternate opening for path : \"%s\"", path.c_str());

      string str(path);

      fork([this, str]()
           {

            posix_shell_command("xdg-open \"" + str + "\" &");

           });

   }
   
   
      bool node::set_process_priority(::enum_priority epriority)
{
      
//~ //#ifdef LINUX
      
//~ //#error "please transfer the code commented below to linux-operating_system"
//~ //
//~ //#else
      
      //~ return ::platform::node::set_process_priority(epriority);
      
//~ ///#endif
      
      
   //~ }
   //~ {
//~ //
      int iPolicy = SCHED_OTHER;

      sched_param schedparam;
//
      schedparam.sched_priority = 0;
//
      process_get_os_priority(&iPolicy, &schedparam, epriority);
//
     sched_setscheduler(0, iPolicy, &schedparam);
//
      return true;
//
   }



   ::pointer <::operating_system::summary > node::operating_system_summary()
   {

      auto psummary = __create_new < ::operating_system::summary >();


      //::particle::initialize(pparticle);

      ::string strOs;
      ::string strVer;
      //}

      // freedesktop.org and systemd
      if (file_system()->exists("/etc/os-release"))
      {
      
//         printf("/etc/os-release exists?!?!");

         auto set = file()->get_standard_configuration("/etc/os-release");

         psummary->m_strSystem = set["ID"];
         psummary->m_strSystemBranch = set["VARIANT_ID"];
         psummary->m_strAmbient = psummary->m_strSystemBranch;
         psummary->m_strSystemRelease = set["VERSION_ID"];
         psummary->m_strSystemFamily = set["ID_LIKE"];

         character_count iDot = psummary->m_strSystemRelease.find_index('.');

         if(iDot > 0)
         {

            psummary->m_strSystemRelease = psummary->m_strSystemRelease.left(iDot);

         }

         psummary->m_strSystem.make_lower();
         psummary->m_strSystemBranch.make_lower();
         psummary->m_strAmbient.make_lower();
         psummary->m_strSystemRelease.make_lower();
         psummary->m_strSystemFamily.make_lower();

      }
      else
      {
      
//         printf("/etc/os-release doesnt exist?!?!");
      
         //::string strUnameA = get_posix_shell_command_output("uname -a");
         
         auto strUnameSystem = _uname_system();

         debugf("_uname_system: %s", strUnameSystem.c_str());

         //auto strUnameRelease = get_posix_shell_command_output("uname -r");
         
         auto strUnameRelease = _uname_release();

         debugf("_uname_release: %s", strUnameRelease.c_str());
         
         strUnameSystem.trim();
         
         strUnameRelease.trim();
         
         if(strUnameSystem.case_insensitive_equals("netbsd") && strUnameRelease.has_character())
         {
         
            psummary->m_strSystem = "netbsd";
//            psummary->m_strSystemBranch = "bsd";
            psummary->m_strSystemRelease = strUnameRelease;
            psummary->m_strSystemFamily = "netbsd";


         }
      
      }

      auto strLowerCaseCurrentDesktop = this->get_environment_variable("XDG_CURRENT_DESKTOP").lowered();

      //# echo "lower case xdg_current_desktop is $__SYSTEM_LOWER_CASE_CURRENT_DESKTOP"
      if (strLowerCaseCurrentDesktop.equals("gnome"))
      {
         //      if contains
         //      $__SYSTEM_LOWER_CASE_CURRENT_DESKTOP
         //      "gnome";
         //      then
         //
         //# echo "lower case xdg_current_desktop contains gnome"

         psummary->m_strAmbient = "gnome";

      }
      else if (strLowerCaseCurrentDesktop.equals("kde"))
      {
         //      elif
         //      contains
         //      $__SYSTEM_LOWER_CASE_CURRENT_DESKTOP
         //      "kde";
         //      then
         //
         //# echo "lower case xdg_current_desktop contains gnome"

         psummary->m_strAmbient = "kde";

      }
      else if (strLowerCaseCurrentDesktop.equals("lxde"))
      {
         //      elif
         //      contains
         //      $__SYSTEM_LOWER_CASE_CURRENT_DESKTOP
         //      "lxde";
         //      then
         //
         //# echo "lower case xdg_current_desktop contains lxde"

         psummary->m_strAmbient = "lxde";

      }
      else
      {
         
         //~ if(1)
         //~ {
            
            //~ psummary->m_strAmbient = "xfce";
            
         //~ }
         //~ else
         #if defined(CUBE)
         
            ::string strXfceAbout = get_posix_shell_command_output("xfce4-about -V");

            debugf("xfce4-about -V output: %s", strXfceAbout.c_str());

            if(strXfceAbout.case_insensitive_begins("xfce4-about "))
            {

               psummary->m_strAmbient = "xfce";
  
            }

         #else
         
         {
         
            //auto plibraryXfce4Util = dlopen("libxfce4util.so", RTLD_LAZY | RTLD_GLOBAL);
            
            auto plibraryXfce4Util = dlopen("libxfce4util.so", 0);
            
            if(::is_null(plibraryXfce4Util))
            {
               
               warningf("failed to open libxfce4util.so : \"%s\"", dlerror());
               
            }
            else
            {
               
               auto pXfceVersionString =  dlsym(plibraryXfce4Util, "xfce_version_string");
               
               if(::is_null(pXfceVersionString))
               {
               
                  warningf("failed to get address of xfce_version_string : \"%s\"", dlerror());
               

                  //int main() {
                  //  printf("XFCE Version: %s\n", xfce_version_string());
               
               }
               else
               {
                  
                  PFUNCTION_XFCE_VERSION_STRING pfnXfceVersionString = (PFUNCTION_XFCE_VERSION_STRING) pXfceVersionString;
                  
                  auto pszXfceVersionString = pfnXfceVersionString();
                  
                  if(::is_null(pszXfceVersionString) || *pszXfceVersionString == '\0')
                  {
                     
                     warningf("failed to get xfce_version_string");
                     
                  }
                  else
                  {
                  
                     informationf("xfce_version_string %s", pszXfceVersionString);
                  //"failed to get address of xfce_version_string : \"%s\"", dlerror());
     
                     psummary->m_strAmbient = "xfce";
                     
                     //exit(0);
                
                  }
                  
               }
               
               dlclose(plibraryXfce4Util);

            ///::string strXfceAbout = get_posix_shell_command_output("xfce4-about -V");
            
            }


         }
//         if(strXfceAbout.case_insensitive_begins("xfce4-about "))
  //       {

  
    //     }

//         debugf("xfce4-about -V output: %s", strXfceAbout.c_str());

#endif

      }

      if(psummary->m_strSystemBranch.is_empty())
      {

         psummary->m_strSystemBranch = psummary->m_strAmbient;

      }

      psummary->m_strSystemAmbientRelease=psummary->m_strSystem + "/" + psummary->m_strSystemBranch + "/" + psummary->m_strSystemRelease;

      //psummary->m_strUnderscoreOperatingSystem = psummary->m_strSlashedStore;

      //psummary->m_strSlashedIntegration = psummary->m_strSlashedStore;

      //psummary->m_strUnderscoreOperatingSystem.find_replace("/", "_");
      
      auto pathToolFolder = path_system()->tool_folder_path();

      auto pathToolBinFolder = pathToolFolder / "bin";

      auto pathHome = directory_system()->home();

      auto pathHomeBin = pathHome / "bin";
      
      psummary->m_strPathPrefix = pathHomeBin + ":" + pathToolBinFolder;

      //this->set_environment_variable("__SYSTEM", psummary->m_strSystem);
      //this->set_environment_variable("__SYSTEM_FAMILY", psummary->m_strSystemFamily);
      //this->set_environment_variable("__SYSTEM_BRANCH", psummary->m_strSystemBranch);
      //this->set_environment_variable("__SYSTEM_RELEASE", psummary->m_strSystemRelease);
      //this->set_environment_variable("__SYSTEM_AMBIENT_RELEASE", psummary->m_strSystemAmbientRelease);
      ////this->set_environment_variable("__SYSTEM_SLASHED_INTEGRATION", psummary->m_strSlashedIntegration);
      ////this->set_environment_variable("__SYSTEM_UNDERSCORE_OPERATING_SYSTEM", psummary->m_strUnderscoreOperatingSystem);
      //this->set_environment_variable("__SYSTEM_SUDO_INSTALL", psummary->m_strSudoInstall);
      //this->set_environment_variable("__SYSTEM_TERMINAL", psummary->m_strTerminal);
      //this->set_environment_variable("__AMBIENT", psummary->m_strAmbient);
      //this->set_environment_variable("__PATH_PREFIX", psummary->m_strPathPrefix);

      return psummary;

   }


	process_identifier_array node::processes_identifiers()
	{
		int c = 0;
		
		auto pp = netbsd_list_processes(c);
		
		process_identifier_array processidentifierarray;
		if(pp)
		{
			processidentifierarray.set_size(c);
			
			for(int i = 0; i < c; i++)
			{
				
				processidentifierarray[i] = pp[i];
				
			}
			
			::free(pp);
			
		}

return ::transfer(processidentifierarray);		
		
		
	}


} // namespace acme_netbsd



