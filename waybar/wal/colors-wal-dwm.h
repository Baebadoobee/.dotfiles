static const char norm_fg[] = "#c2c3c3";
static const char norm_bg[] = "#0d1012";
static const char norm_border[] = "#58656c";

static const char sel_fg[] = "#c2c3c3";
static const char sel_bg[] = "#7C8472";
static const char sel_border[] = "#c2c3c3";

static const char urg_fg[] = "#c2c3c3";
static const char urg_bg[] = "#E7492B";
static const char urg_border[] = "#E7492B";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
