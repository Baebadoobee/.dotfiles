static const char norm_fg[] = "#c3c3c4";
static const char norm_bg[] = "#0f1016";
static const char norm_border[] = "#5a5a6f";

static const char sel_fg[] = "#c3c3c4";
static const char sel_bg[] = "#A46C99";
static const char sel_border[] = "#c3c3c4";

static const char urg_fg[] = "#c3c3c4";
static const char urg_bg[] = "#5C7BB9";
static const char urg_border[] = "#5C7BB9";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
