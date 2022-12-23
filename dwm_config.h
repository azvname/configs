#include <X11/XF86keysym.h>

/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 1;       /* border pixel of windows */
static const unsigned int snap      = 1;       /* snap pixel */
static const int showbar            = 1;       /* 0 means no bar */
static const int topbar             = 1;       /* 0 means bottom bar */

static const char *fonts[]          = {"xos4 Terminus:size=12"};
static const char dmenufont[]       = "xos4 Terminus:size=12";

// static const char *fonts[]          = {"bront:size=11"};
// static const char dmenufont[]       = "bront:size=11";

// static const char *fonts[]          = {"monospace:size=10"};
// static const char dmenufont[]       = "monospace:size=10";

static const char col_gray1[]       = "#00a090";
static const char col_gray2[]       = "#3090f2";
static const char col_gray3[]       = "#121212";
static const char col_gray4[]       = "#222222";
static const char col_gray5[]       = "#222222";

static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray1, col_gray5, col_gray5 },
	[SchemeSel]  = { col_gray2, col_gray3, col_gray2 },
};

/* tagging */
// static const char *tags[] = { "main", "work", "www", "media", "vm", "other" };
static const char *tags[] = { "一", "二", "三", "四", "五", "六", "七", "八", "九", "十" };


static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class                        instance    title       tags mask     isfloating   monitor */
	{ "URxvt",                      NULL,				NULL,       1 << 0,       0,           -1 },
	{ "KeePassXC",			            NULL,       NULL,       1 << 0,       0,           -1 },
	{ "Wireshark",									NULL,       NULL,       1 << 1,       0,           -1 },
	{ "libreoffice-startcenter",	  NULL,       NULL,       1 << 1,       0,           -1 },
	{ "libreoffice-impress",				NULL,       NULL,       1 << 1,       0,           -1 },
	{ "libreoffice-writer",					NULL,       NULL,       1 << 1,       0,           -1 },
	{ "libreoffice-calc",						NULL,       NULL,       1 << 1,       0,           -1 },
	{ "libreoffice-draw",						NULL,       NULL,       1 << 1,       0,           -1 },
	{ "PacketTracer",	              NULL,       NULL,       1 << 1,       0,           -1 },
	{ "processing-app-Base",        NULL,       NULL,       1 << 1,       0,           -1 },
	{ "Firefox",                    NULL,       NULL,       1 << 2,       0,           -1 },
	{ "TelegramDesktop",	          NULL,       NULL,       1 << 2,       0,           -1 },
	{ "Atril",	                    NULL,				NULL,       1 << 3,       0,           -1 },
	{ "Viewnior",										NULL,       NULL,       1 << 3,       0,           -1 },
	{ "ffplay",											NULL,       NULL,       1 << 3,       0,           -1 },
	{ "vlc",												NULL,       NULL,       1 << 3,       0,           -1 },
	{ "feh",												NULL,       NULL,       1 << 3,       0,           -1 },
	{ "krita",											NULL,       NULL,       1 << 3,       0,           -1 },
	{ "Qemu-system-x86_64",         NULL,       NULL,       1 << 4,       0,           -1 },
	{ "qemu-system-x86_64",         NULL,       NULL,       1 << 4,       0,           -1 },
	{ "Barrier",										NULL,       NULL,       1 << 5,       0,           -1 }
};

/* layout(s) */
static const float mfact     = 0.5;		/* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;			/* number of clients in master area */
static const int resizehints = 0;			/* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
//#define MODKEY Mod1Mask
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */

// static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray3, "-nf", col_gray1, "-sb", col_gray5, "-sf", col_gray2, NULL };

static const char *dmenucmd[] = { "rofi", "-show", "run", "drun", "-show_icons", "-xoffset", "0" ,"-yoffset", "0", NULL };
// static const char *dmenucmd[] = { "rofi", "-show", "drun", "-show_icons", "-xoffset", "0" ,"-yoffset", "0", NULL };
static const char *cmdprintscreen[] = { "scrot", "-d3", "/home/yuno/Pictures/Screenshots/%Y-%m-%d-%s_$wx$h.png", NULL };
static const char *printscreen[] = { "flameshot", "gui", NULL };
static const char *termcmd[]  = { "urxvt", NULL };


static const char *apluscmd[] = { "amixer", "set", "Master", "2+", NULL };
static const char *aminuscmd[] = { "amixer", "set", "Master", "2-", NULL };
static const char *amutecmd[] = { "amixer", "set", "Master", "0", NULL };



// scrot '%Y-%m-%d_$wx$h_scrot.png' -e 'mv $f ~/images/shots/'
static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ 0,                            XK_Print,  spawn,          {.v = cmdprintscreen } },
	{ MODKEY,                       XK_Print,  spawn,          {.v = printscreen } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_p,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
	{ 0,                            XF86XK_AudioRaiseVolume,   spawn,          {.v = apluscmd } },
	{ 0,                            XF86XK_AudioLowerVolume,   spawn,          {.v = aminuscmd } },
	{ 0,                            XF86XK_AudioMute,          spawn,          {.v = amutecmd } }
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};


