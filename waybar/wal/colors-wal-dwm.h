static const char norm_fg[] = "#dcc5c9";
static const char norm_bg[] = "#761727";
static const char norm_border[] = "#927a7e";

static const char sel_fg[] = "#dcc5c9";
static const char sel_bg[] = "#D651C1";
static const char sel_border[] = "#dcc5c9";

static const char urg_fg[] = "#dcc5c9";
static const char urg_bg[] = "#6972F2";
static const char urg_border[] = "#6972F2";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
